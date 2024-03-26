

Vale Configuration
===============================================================================

[Vale ](https://errata-ai.github.io/vale) is a natural language linter that supports plain text, markup (Markdown, reStructuredText, AsciiDoc, and HTML), and source code comments. Vale doesn't attempt to offer a one-size-fits-all collection of rules—instead, it strives to make customization as easy as possible.

This directory has some notes and tools for customizing Vale, to suit your writerly preferences.

```
vale-config/
├── README.md
├── .vale.ini # an example config file for Vale
├── Styles/
│   ├── hedgeclipper/ # my example style
```


Step One: Install Vale
-------------------------------------------------------------------------------

Vale is a command line application. If you're not yet comfortable at the command line, you may want to skip this stuff and go straight to installing the graphical version Vale Server.

**To install Vale**, follow the [installation steps in the Vale documentation](https://github.com/errata-ai/vale/blob/master/README.md#installation).

**To begin using Vale**, the fist step is to [set up the config file](https://errata-ai.github.io/vale/config/) in your home directory.


Step Two: Choose your styles
-------------------------------------------------------------------------------

Lots of style guides have been created for Vale, because it's easy to make them. For example, the Vale version of the style guides used by [Microsoft](https://github.com/errata-ai/Microsoft) for technical writing and [The Economist](https://github.com/testthedocs/vale-styles/tree/master/TheEconomist) for their elite business cliente/readership. 

Vale has lots of styles you could install, in [the official Vale Styles repository](https://github.com/errata-ai/styles), and in [other collections](https://github.com/testthedocs/vale-styles). Just put each style's folder in the `StylesPath` directory, as defined in your Vale config file.

The best part about Vale is that you can make your own styles. 


Step Three: configure Vale for your text editor
-------------------------------------------------------------------------------

If, like me, you use Sublime Text as your writing space, you can add a Vale as extension. You might want to [use my package for SublimeLinter](https://github.com/dylan-k/SublimeLinter-contrib-vale) or the simpler [standalone version](https://github.com/dylan-k/SubVale). These are compatible with the latest Sublime Text configs, and with the Vale CLI.

You can also use Vale Server with lots of other programs: [Atom](https://atom.io/packages/atomic-vale and [Google Chrome ](https://errata-ai.github.io/vale-server/docs/chrome)among them.


Step Four: quit hacking and start writing! Or editing, now that you have Vale.
------------------------------------------------------------------------------

Have fun.
