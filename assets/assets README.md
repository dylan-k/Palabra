

Pandoc doesn't look for templates and filters here.
But this is where I store them, for version control

You can symlink from here to a place where pandoc expects
e.g.
`ln -s /home/$USER/Creative/poems/assets/data /home/$USER/.config/pandoc/metadata`

I store mine at `~/.config/pandoc/`
which is in-turn symlinked to pandoc's default directory:
Windows: `%APPDATA%\pandoc`
Mac/Unix: `$HOME/.local/share/pandoc`.
<https://pandoc.org/MANUAL.html#option--data-dir>
