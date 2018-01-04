# vim-textobj-css

[Text objects](http://blog.carbonfive.com/2011/10/17/vim-text-objects-the-definitive-guide/) in Vim are very useful. They allow you to modify text by word, sentence, paragraph, HTML tag, and more. [vim-textobj-user](https://github.com/kana/vim-textobj-user) is a Vim plugin that lets you define your own text objects and this project builds on that one to let you work with CSS blocks more easily.

![demo](https://cloud.githubusercontent.com/assets/6104/13205723/558fa396-d8bc-11e5-8587-f1763a98f62b.gif)

### Usage

* `vic` Visually select inner CSS (inner rules)
* `vac` Viscually select "all" CSS (entire block w/ selector(s))
* `cic` Change inner CSS
* `cac` Change "all" CSS
* `dic` Delete inner CSS
* `dac` Delete "all" CSS

It's often handy to visually select a nested CSS block with `vac` and then type `ac` again to expand the selection to the parent block. This is shown in the above GIF.

#### :warning: Warning if you use vim-gitgutter :warning:

vim-gitgutter supplies some text objects for dealing with hunks and these conflict with vim-textobj-css. As the [vim-gitgutter README describes](https://github.com/airblade/vim-gitgutter#hunks), you can override those settings with something like:

```
omap ih <Plug>GitGutterTextObjectInnerPending
omap ah <Plug>GitGutterTextObjectOuterPending
xmap ih <Plug>GitGutterTextObjectInnerVisual
xmap ah <Plug>GitGutterTextObjectOuterVisual
```

## Installation

This plugin requires [vim-textobj-user](https://github.com/kana/vim-textobj-user). Use your favorite plugin manager to add these lines.

### vim-plug
```
Plug 'kana/vim-textobj-user'
Plug 'jasonlong/vim-textobj-css'
```

### NeoBundle
```
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'jasonlong/vim-textobj-css'
```

### Vundle
```
Plugin 'kana/vim-textobj-user'
Plugin 'jasonlong/vim-textobj-css'
```
