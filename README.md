
Palabra
================================================================================

**Tools for leaving Microsoft Word behind, among other things.**

Palabra is a set of scripts and resources designed to help writers move away from proprietary word processors and into plain-text workflows. These tools leverage [textutil](https://developer.apple.com/library/archive/documentation/Darwin/Reference/ManPages/man1/textutil.1.html) and [Pandoc](https://pandoc.org/) to convert `.doc`/`.docx` files into Markdown, providing more control over text and easier collaboration across platforms.


Features
--------------------------------------------------------------------------------

  - **Convert Word Documents to Markdown:** Convert `.doc` or `.docx` files into `.md` (Markdown) format with ease.  
  - **Batch Conversion:** Process multiple files in a directory using simple scripts.  
  - **Script Collection:** Includes shell scripts for renaming files by first line, adding file extensions, splitting one big file into many, and more.  
  - **Text-Based Workflow:** Once your files are in Markdown, you can use version control, text editors, or any other plain-text tools.  
  - **Templates & Database (Work in Progress):** Additional templates are planned for standard manuscript formatting, as well as a writer's database to track submissions.


Requirements
--------------------------------------------------------------------------------

1. **Pandoc**: [Install Pandoc](https://pandoc.org/installing.html) for file conversion to and from Markdown.  
2. **textutil (macOS)**: Pre-installed on macOS for converting `.doc`/`.docx` to `.html`.  
   - *Windows users*: Alternative tools may be needed (contributions welcome!).


Usage
--------------------------------------------------------------------------------

Clone or download this repository, then navigate into the `scripts` directory (or wherever you place the scripts) from your terminal.

### Example Workflows

1. **Convert `.doc` → `.html` → `.md`**  

   ```sh
   # Step 1: Convert all .doc files to .html
   sh convert1.sh

   # Step 2: Convert all .html files to Markdown
   sh convert2.sh
   ```

   > Update the extension in `convert1.sh` if you need `.docx` or `.rtf`.

2. **Batch Convert a Directory**  

   ```sh
   # Convert every .doc or .docx in /path/to/dir to .md
   ./batch_convert.sh /path/to/dir
   ```

3. **Splitting & Renaming**  
   - **split-files.md**: Example commands to split a large text file into multiple files based on a marker.  
   - **linenumber-rename.sh**: Renames each file using the first line of text.  
   - **add_txt_extension.sh**: Appends `.txt` to any file lacking an extension.


Additional Tips
--------------------------------------------------------------------------------

  - **One Word Document, Many Texts**: If you have a single `.docx` containing many pieces (e.g., hundreds of poems), you can first convert it to `.md` or `.txt`, then split it into individual files using the `split-files.md` instructions.  
  - **Preserving Formatting**: Markdown conversion captures basic text styling (headings, italics, etc.). Complex Word features (track changes, special fields) may require post-editing.


Resources
--------------------------------------------------------------------------------

  - [Leaving Word Behind (blog series)](https://nocategories.net/tags/text-processing/)  
  - [Batch conversion with `textutil`](http://hints.macworld.com/article.php?story=20060309220909384)  
  - [Bash loops for batch conversion](http://blog.silentumbrella.com/2009/10/08/bash-loops-are-fun-for-batch-conversion.html)


Contributing
--------------------------------------------------------------------------------

Contributions are welcome—especially for cross-platform support and new scripts. Feel free to open issues or pull requests.


License
--------------------------------------------------------------------------------

This project is licensed under the [MIT License](LICENSE).

---

*Questions, ideas, or suggestions? Please open an issue or contribute directly via a pull request.*
