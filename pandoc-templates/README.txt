Pandoc Templates
================

Use these to convert your plain-text writings into a "pretty" format.
Docs coming soon.

For now: 

- http://kieranhealy.org/blog/archives/2014/01/23/plain-text/
- http://johnmacfarlane.net/pandoc/README.html#templates
- https://github.com/jgm/pandoc-templates
- https://github.com/jgm/pandoc/wiki/User-contributed-templates

## TODO

When I'm done with this set of templates, here are some things you should be able to do with them:

convert your plain-text story/poem into a variety of file types:

- PDF
    * ``pandoc story.md --latex-engine=xelatex --template=story.latex --from=markdown_github+yaml_metadata_block --output=story.pdf``
    * ``pandoc poem.md --latex-engine=xelatex --template=poem.latex --from=markdown_github+yaml_metadata_block --output=poem.pdf``
- Word
    * http://hackademic.postach.io/pandoc-and-academic-docx-files
    * ``pandoc story.md --reference-docx=story-reference.docx --from=markdown_github+yaml_metadata_block --output=manuscript.docx``
- Open Office?
    * https://github.com/andrewheiss/Global-Pandoc-files/blob/master/templates/odt-manuscript.template

These should all be formatted according to [Standard Manuscript Format](http://en.wikipedia.org/wiki/Standard_Manuscript_format).


