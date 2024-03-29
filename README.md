# My portable environment

<img src="./_res/eva01-theme.png" alt="Screenshot">
<sub>tmux, ranger, zsh, and neovim with eva01 theme</sub>

<hr>
I regularly jump across Windows, MacOS, and various Linux DEs so this is an attempt to script my environment to be usable wherever I go. This
setup is used and confirmed working on Mac OS, Ubuntu 18.04, Ubuntu 20.04 (WSL), Android (via Termux), iOS (via iSH [Alpine Linux]), and Raspberry Pi OS (Raspian) on armv7.

In particular, this provides installation and configuration for:

  * core packages
  * bat
  * bpytop
  * chrome (only as link to chrome theme)
  * highlight (used for syntax highlighting by some system utilities and ranger)
  * git
  * neovim
  * tmux
  * ranger
  * slack (suggested sidebar theme)
  * zsh (and sets up replacements for cat and ls)
  * fonts
  * Windows Terminal (where available)
  * Windows Theme (where available)
  * Gnome Terminal (where available)
  * Alacritty (where available)
  * Kitty (where available)
  * A selection of wallpapers which match the included themes
  * (more coming soon as I get it working for my bspwm setup)

## Prerequisites
  * zsh
  * brew (if on macOS)

## Installing
The installation/configuration script is modular. To install everything, simply run `zsh ./install.zsh` (sudo is required on Linux).

Alternatively, you can install the following targets separately by running `zsh ./install.zsh [target1 target2 ...]` where a target is one of:

  * **packages** install all apt/brew/cargo/npm/pip/etc programs
  * **tmux** install configuration and associated plugins for tmux
  * **zsh** install oh-my-zsh and associated configuration, including aliases and custom functions (fzf, color scripts, etc)
  * **bat** install configuration for bat
  * **git** install git aliases and config
  * **nvim** install neovim configuration
  * **highlight** install highlight configuration (for syntax highlighting within various unix utilities)
  * **ranger** install ranger configuration
  * **bpytop** install bpytop configuration
  * **winterm** install configuration for Windows Terminal (where applicable)
  * **fonts** install fonts associated with this configuration. Will set default font where available
  * **alacritty** install configuration for alacritty (where available)
  * **gnome-terminal** install configuration for gnome terminal (where available)
  * **slack** generate sidebar theme for slack
  * **chrome** link to suggested chrome theme in web store

### Options
  * `-t <theme_name>` Specify theme to use (see themes below)
  * `-w <windows username>` If on windows, the username which corresponds to the home folder which will be used as an install path for windows-specific settings
  * `-c` Compile additional Cargo packages. This is off by default since this can take a considerable amount of time. By default, only cargo packages which are dependencies for other utilities are compiled.
  * `-u` Update installed packages

## Theming
Theme support is provided via a simple `sed`-based template system. Any configuration file can specify a template variable by enclosing a key
within double curly braces (e.g. `{{my_template_variable}}`). The theme script then replaces these variables with values from the loaded theme.
Some theming is done by specifying hex colors while other theming is done by taking advantage of provided themes.


To use a theme, run the install script with the `-t` option followed by the theme name: `./install.zsh -t dracula`


### default
(attempts to use configurations which make terminal utilities respect shell colors)

### all-hallows-eve
<img src="./_res/all-hallows-eve-theme.png" alt="all-hallows-eve">

### cyberpunk
<img src="./_res/cyberpunk-theme.png" alt="cyberpunk">

### dracula
<img src="./_res/dracula-theme.png" alt="dracula">

### eva01
<img src="./_res/eva01-theme.png" alt="eva01">

### farout
<img src="./_res/farout-theme.png" alt="farout">

### gruvbox
<img src="./_res/gruvbox-theme.png" alt="gruvbox">

### hyperlight
<img src="./_res/hyperlight-theme.png" alt="hyperlight">

### kawaii
<img src="./_res/kawaii-theme.png" alt="kawaii">

### lighthaus
(partial theme only - no vim yet)

### miramare
<img src="./_res/miramare-theme.png" alt="miramare">

### monokai
<img src="./_res/monokai-theme.png" alt="monokai">

### nord
<img src="./_res/nord-theme.png" alt="nord">

### okami
<img src="./_res/okami-theme.png" alt="okami">

### one-dark
<img src="./_res/one-dark-theme.png" alt="one-dark">

### phosphor
<img src="./_res/phosphor-theme.png" alt="phosphor">

### phosphorange
<img src="./_res/phosphorange-theme.png" alt="phosphorange">

### phosphorange-glow
<img src="./_res/phosphorange-glow-theme.png" alt="phosphorange-glow">

### phosphorchid
<img src="./_res/phosphorchid-theme.png" alt="phosphorchid">

### retropunk
<img src="./_res/retropunk-theme.png" alt="retropunk">

### rose-pine
<img src="./_res/rose-pine-theme.png" alt="rose-pine">

### salvation
<img src="./_res/salvation-theme.png" alt="salvation">

### sunset
<img src="./_res/sunset-theme.png" alt="sunset">

### talk
<img src="./_res/talk-theme.png" alt="talk">

### vivid
<img src="./_res/vivid-theme.png" alt="vivid">

### xp
<img src="./_res/xp-theme.png" alt="xp">

## TODO
  * [X] Modify themes to use $SEPARATOR_ instead of setting their own separator/segment values
  * [ ] Create configurable nvchad theme
  * [ ] Update themes to use configurable nvchad theme
  * [ ] Create reverse binding to theme terminal when nvchad theme changes
