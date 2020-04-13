Pandoc Templates
================

Quick and easy formatting for writers. Start with a plain text markdown-formatted file with a poem and story, and quickly create a PDF or Word doc with [Standard Manuscript Format](http://en.wikipedia.org/wiki/Standard_Manuscript_format).


## GETTING STARTED

There are command-line utilities and other apps you'll need to have installed before this kit will be useful.

- [Courier Prime](https://quoteunquoteapps.com/courierprime/) a better, free Courier font.
- [Pandoc](https://pandoc.org/) for document conversion
- [Xelatex](https://www.latex-project.org/get/) for typesetting, and its pacakge:   
  - [sectsty](https://ctan.org/pkg/sectsty?lang=en)

1. Copy the `.latex` files to the [Pandoc templates](https://pandoc.org/MANUAL.html#templates) directory. By default, that dierctory is `~/.pandoc/templates`.
2. The `.latex` files are heavily commented with notes that should help you along the way.

## USAGE

convert your plain-text story/poem into a variety of file types:

- PDF
    * ``pandoc story.md --pdf-engine=xelatex --template=story.latex --from=markdown_github+yaml_metadata_block+hard_line_breaks --output=story.pdf``
    * ``pandoc poem.txt --pdf-engine=xelatex --template=poem.latex --from=markdown_github+yaml_metadata_block+hard_line_breaks --output=poem.pdf``
- Word
    * ``pandoc story.md --reference-doc=story-reference.docx --from=markdown_github+yaml_metadata_block+hard_line_breaks --output=manuscript.docx``
- Open Office?
    * https://github.com/andrewheiss/Global-Pandoc-files/blob/master/templates/odt-manuscript.template


## References

- http://kieranhealy.org/blog/archives/2014/01/23/plain-text/
- http://johnmacfarlane.net/pandoc/README.html#templates
- https://github.com/jgm/pandoc-templates
- https://github.com/jgm/pandoc/wiki/User-contributed-templates
