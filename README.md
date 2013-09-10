Palabra
=======

a tool for leaving Microsoft Word behind.

I'm using this to convert all my old Microsoft Word files into something text-based. I think I'll use Multimarkdown for now (except maybe for poetry?!).

This is all part of a project I'm working on to devise tools to help writers use [version control tools](http://nocategories.net/tag/version-control/).

Also, I'm still learning a lot of things, so I'm using this as a way to learn git, github, pandoc and whatever else becomes useful. 

## Step One: Define the Problem

Over the years, I have written documents in a variety of different file formats. Most of them are in Microsoft Word formats. I'll keep using Word, for now, but only for making final drafts pretty enough to send out to editors. For my working versions, I'd like my files to be plain text. They're more "future-proof" that way, and I can use them to do some more advanced stuff.

So, how do I convert lots of files? My personal archive contains .doc files and .docx files and several .rtf files and even a few .html files. I have many of these. Should I just open each one up and do "save as" over and over and over again? Well, I could do that, but what a waste of time! 

## Step Two: Choose the tools

I set out to find a smarter method. Luckily, a recent visitor to my blog commented that I might want to learn about something called "Pandoc". Pandoc is a powerful command-line tool for converting many types of written documents, from one file format to another. So I'll just use Pandoc for this, right? There's a catch. Pandoc can't work with .doc files and I have many .doc files. Before I can use Pandoc to convert all my files into a text-based format, I'll need to use something first, to convert everything to .doc.

For me, I chose textutil for OS X. (Windows users, please chime in with any tools for windows that might help!)

I saw some forum posts that suggest that the following might work (on OS X) as a way to combine Textutil with Pandoc:

```find . -name '*.docx' -print0 | xargs -0 sh -c 'textutil -convert html "$0" -stdout | pandoc -f html -t markdown -o "${0%.*}.md"'```

…but I couldn't get that to work. I saw another post that said that bash loops might do the trick, and they did, but the examples weren't written for Pandoc so...

## Step Three: Prepare the conversion 

1. install the two files convert1.sh and convert2.sh into a directory full of files that you would like to convert.
2. from the terminal type "sh convert1.sh" This will convert all the .docx files in the directory into html files. (edit the file to say .doc if that's the kind you want to change)
3. then type "sh convert2.sh". This will convert all the html files you just made in step 2 into markdown files.


## useful links

- [convert batch of files via textutil](http://hints.macworld.com/article.php?story=20060309220909384) 
- [My question about this to Metafilter](http://ask.metafilter.com/248126/Convert-Many-Word-Documents-to-Markdown#3604336)
- [using bash loops for bash conversion](http://blog.silentumbrella.com/2009/10/08/bash-loops-are-fun-for-batch-conversion.html)

