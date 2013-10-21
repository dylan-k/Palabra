# Writer's Database

This is a database tool intended to help writers to keep track of their submissions, publications they'd like to submit to, and the manuscripts that they would like to publish. It is based on several sources. 

- [Writer's Database by Dmitri Popov](http://www.linux-magazine.com/w3/issue/103/084-086_workspace.pdf), part of [The Writer's Tools Extension for OpenOffice.org and LibreOffice](https://code.google.com/p/writertools/)
- Uses [Split_HSQLDB_Wizard_v3c.odb](http://forum.openoffice.org/en/forum/viewtopic.php?f=83&t=61183) for Base
- My [notes about submission tracking tools for writers](http://nocategories.net/ephemera/writing/writing-submission-tools/), overview of existing methods, feature wish list, etc.

## Usage
This database tool is designed to be free and to run on multiple platforms, so it relies on [LibreOffice](http://www.libreoffice.org/) Base, which is also free to install. It is also compatible with [OpenOffice](http://www.openoffice.org/) Base. Install one of those two applications and then open the .odb file to begin. Be sure to enable macros.

Documentation is coming soon. Please feel free to ask questions. For now, here's are some useful links:
- [a write-up of the database design](https://gist.github.com/dylan-k/6878823)
- [ongoing conversation about the development of this database](http://en.libreofficeforum.org/node/6787)

## License

This database is licensed under the GNU GPL, as was the source it is derived from.

## Changelog

v 0.4 changelog:
- changed sub_file data field. It now only stores filenames rather than the complete binary file. This was done to reduce risk of bloat/instability.
- added buttons to the submissions form. These buttons should help the sub-forms to add new entries for manuscript or venue as needed.
- cosmetic changes, particularly to the submissions form.

v 0.3 changelog:
- additional fields added to 'venues' table
- submissions form adjusted for adding new manuscripts and venues