--[[

linecount.lua
=============================================================================

A Pandoc Lua filter designed to count the non-empty lines in the document body, excluding YAML frontmatter and blank lines. This filter is useful for poems formatted in Standard Manuscript Format, where the total number of lines should be shown.

See also: Word Count https://pandoc.org/lua-filters.html#counting-words-in-a-document

Usage
--------------------------------------------------------------------------------

pandoc --pdf-engine=lualatex --template=poem.latex --lua-filter=linecount.lua example.md --output=output.pdf

Note: Ensure that your document template (`poem.latex`) includes a variable to display the line count in the document header. For example, add `$linecount$` in your template where you want the line count to appear.

Default Locations for Lua Filters

Pandoc's Lua filters directory is specified by the `pandoc --data-dir` command.
https://pandoc.org/MANUAL.html#option--data-dir
Ensure that 'linecount.lua' is placed (or symlinked) in one of these default locations, or specify the full path to the filter in the command if stored elsewhere.

By default, the path is often:
Windows: `%APPDATA%\pandoc`
Mac/Unix: `$HOME/.local/share/pandoc`.

]]--

-- Initialize global line count variable
LineCount = 0

-- Function to count lines within a paragraph
function countLines(block)
  -- Check if block is a paragraph
  if block.t == "Para" then
    -- Initially count the paragraph itself as one line
    local paraLineCount = 1
    -- Iterate through the content of the paragraph
    for _, el in ipairs(block.content) do
      -- Check for line break elements
      if el.t == "LineBreak" then
        -- Increment line count for each line break found
        paraLineCount = paraLineCount + 1
      end
    end
    -- Add the paragraph's line count to the total line count
    LineCount = LineCount + paraLineCount
  end
end

-- Function to be called once the whole document is processed
function Pandoc(doc)
  -- Walk through all blocks in the document, applying the countLines function
  pandoc.walk_block(pandoc.Div(doc.blocks), {
    Para = countLines
  })
  -- Insert the line count into the document's metadata
  doc.meta['linecount'] = pandoc.MetaString(tostring(LineCount))
  -- Return the modified document
  return doc
end
