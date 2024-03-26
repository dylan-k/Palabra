# Hedgeclipper

Hedgeclipper is a [Vale-compatible](https://github.com/errata-ai/vale) style guide designed to weed out phases and words known as "hedges". A hedge happens when the writing is overly cautious, hesitant, or polite, to the detriment of the point of the writing. It's up to you whether to clip the hedges from your prose, but this tool helps you do it.

The goal is to maintain a comprehensive set of hedges, an alternative to the  smaller lists available.

## Getting Started

Download the "hedgeclipper" directory to your `StylesPath`, and include it in your configuration file:

```ini
# This goes in a file named either `.vale.ini` or `_vale.ini`.
StylesPath = path/to/some/directory
MinAlertLevel = warning # suggestion, warning or error

# Only Markdown and .txt files; change to whatever you're using.
[*.{md,txt}]
# List of styles to load.
BasedOnStyles = hedgeclipper
```

To avoid redundancy, you can remove other styles' heding rules. For example, in your configuration file:

```
ttd.Hedging = NO
proselint.hedging = NO
```

See [Usage](https://github.com/errata-ai/vale/#usage) for more information.


## Sources

- [Just Not Sorry](https://github.com/defmethodinc/just-not-sorry)
- [just-say-no](https://github.com/lexicalunit/linter-just-say-no/blob/master/resources/hedges.cson)
- [Microsoft Style Guide](https://github.com/errata-ai/Microsoft)
- ...and others
