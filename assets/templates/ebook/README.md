Pandoc Markdown Ebook Template
==============================

This project defines a skeleton repo for creating ebooks out of [Pandoc Markdown](http://johnmacfarlane.net/pandoc/README.html).  Pandoc is a great tool for writing ebooks with simple to moderately complex formatting, but I've found that in practice, creating an EPUB isn't _only_ as simple as running ``pandoc -o book.epub book.md``.

The author of Pandoc has written a short tutorial for [creating EPUB files with Pandoc](http://johnmacfarlane.net/pandoc/epub.html). Evan Goer expanded the tutorial a bit with a Makefile. This repo is a customization of Goer's earlier work.

Installing and running
----------------------

1. If you have not already done so, install:
   
  - [git](http://git-scm.com/)
  - [make](http://www.gnu.org/software/make/) 
  - [pandoc](http://johnmacfarlane.net/pandoc)
  - [latex](http://www.latex-project.org/) 
  - [kindlegen](https://wiki.mobileread.com/wiki/KindleGen#Available_Platforms)

2. Clone this repo with **git**.

3. From the top of the project, type ``make book`` or, ``make``.
   This generates three versions of the sample book in a ``build/`` directory.
   
4. If you don't want to make everything, you can also do: 

  - ``make pdf``
  - ``make html``
  - ``make epub``
  - ``make markdown`` 
  - ``make mobi``


Replacing the sample material
-----------------------------

Edit these files:

  - ch01.md
  - ch02.md

Replace the dummy text with your own. You can add, subtract, or rename these
``*.md`` chapters as you please, but you must edit the ``CHAPTERS`` variable in
the ``Makefile`` accordingly. 

images/cover.jpg
----------------

Replace this with your own cover image or delete it entirely. 

Makefile
--------

- Change ``BOOKNAME`` to something appropriate for your book. This determines your
  book's filename.

- Change ``CHAPTERS`` to a space separated list of Pandoc Markdown chapters, in
  the order in which you want them to appear.

- Change ``COVER_IMAGE``. You might want to move your cover image
  elsewhere, or use a different file format such as PNG.

  If you don't want a cover image, delete this variable and the
  ``--epub-cover-image`` option in the EPUB target.

- (Optional) Change ``LATEX_CLASS``. The default of ``report`` handles 
  multi-chapter books pretty well, and uses the same template for even and odd
  page numbers. You are free to substitute in any other LaTeX document
  class. For example, ``book`` provides a left-side/right-side template that is
  suitable for print, and ``article`` is good for shorter manuscripts (short
  stories, technical briefs).

title.txt
---------

Replace the contents of this file with the real manuscript title and author name.

metadata.xml
------------

Replace with your actual copyright statement, language, and any other [Dublin
Core metadata](https://en.wikipedia.org/wiki/Dublin_Core#Dublin_Core_Metadata_Element_Set) you wish to provide.
