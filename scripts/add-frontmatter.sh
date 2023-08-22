#!/bin/bash

##########################################################
# add-frontmatter.sh - Add YAML Frontmatter to Markdown Files
#
# This script recursively searches for Markdown files in a
# specified directory. It adds YAML Frontmatter to them if
# it is missing. The Frontmatter includes a title
# derived from the filename, a date taken
# from the filename's YYYY-MM-DD format, and "tags" are set
# to "note" by default.
#
# Usage: ./add-frontmatter.sh
#
# Expected Filenames:
# The script expects filenames in formats like:
#   - YYYY-MM-DD-Title.md
#   - YYYY-MM-DD Title of File.md
#   - YYYY-MM-DD_Title-of_file.md
#
# Example Frontmatter:
# After the script's execution,
# a file like "2023-08-21_my-example-file.md" will contain:
#
# ---
# title: "My example file"
# date: 2023-08-21
# tags: [note]
# ---
#
#
# Author: Dylan Kinnett
# Date: 20203-08-22
# Version: 1.0
##########################################################

directory="/path/to/files/"
declare -A file_data  # Associative array to store file data

# Function to extract date and title from filename
extract_date_and_title() {
  local filename="$1"
  local date=""
  local title=""

  # Extract date from the beginning of the filename (YYYY-MM-DD)
  if [[ $filename =~ ^([0-9]{4}-[0-9]{2}-[0-9]{2}) ]]; then
    date="${BASH_REMATCH[1]}"
    # Remove the date and any following dashes or underscores from the filename
    title="${filename:${#date}+1}"
    title="${title//-/ }"
    title="${title//_/ }"
    title="${title%.md}"  # Remove the ".md" suffix
    title="$(tr '[:upper:]' '[:lower:]' <<< "${title:0:1}")${title:1}"  # Capitalize the first letter
  else
    # If no date in filename, extract the entire filename as title
    title="${filename%.*}"
    date=""
  fi

  # Store the title and date in the associative array
  file_data["$filename"]="$title|$date"
}

# Check recursively to determine which files need YAML Frontmatter
file_needs_frontmatter() {
  local file="$1"

  if ! grep -q -e '^---$' "$file" <<< "$(head -n 1 "$file")"; then
    return 0
  else
    return 1
  fi
}

# Function to insert YAML Frontmatter
insert_frontmatter() {
  local file="$1"
  local title="$2"
  local date="$3"
  local default_frontmatter="---\ntitle: \"$title\"\ndate: $date\ntags: [note]\n---\n\n\n"

  echo -e "$default_frontmatter$(tail -n +2 "$file")" > "$file"
  echo "Frontmatter added to '$file'."
}

# Display the list of changes
# For the files where file_needs_frontmatter is TRUE
# display the output of extract_date_and_title
while IFS= read -r -d '' file; do
  if file_needs_frontmatter "$file"; then
    echo "$file needs frontmatter"
    extract_date_and_title "$(basename "$file")"  # Call the function with the filename
  fi
done < <(find "$directory" -type f -name "*.md" -print0)

# Prompt for confirmation and insert frontmatter if confirmed
read -p "Do you want to proceed? (yes/no): " confirmation
if [[ "$confirmation" == "yes" ]]; then
  echo "You chose to proceed. Inserting YAML Frontmatter..."
  while IFS= read -r -d '' file; do
    if file_needs_frontmatter "$file"; then
      title_date="${file_data[$(basename "$file")]}"

      # Extract title and date from the stored data
      title="${title_date%%|*}"
      date="${title_date#*|}"

      echo "Title: $title, Date: $date"  # Debugging line

      insert_frontmatter "$file" "$title" "$date"  # Call the function to insert frontmatter
    fi
  done < <(find "$directory" -type f -name "*.md" -print0)

  echo "Frontmatter insertion completed."
else
  echo "You chose not to proceed. Quitting."
fi
