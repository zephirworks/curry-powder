Treesaver Compass Plugin
========================

A [Compass](http://compass-style.org/) plugin that makes it easy to create
styles for [Treesaver](http://treesaverjs.com/).

[Treesaver](http://treesaverjs.com/) is a JavaScript framework for creating
magazine-style layouts using standards-compliant HTML and CSS. The
[documentation](https://github.com/Treesaver/treesaver/wiki) for Treesaver,
the [walkthrough](https://github.com/Treesaver/treesaver/wiki/Walkthrough) in
particular, provides detailed information on creating the content markup.

However, developing a suitable stylesheet for the different devices is still
an involved process. This plugin strives to simplify this task for both novices
and experienced users, by providing a set of Compass macros that set up
reasonable defaults to make Treesaver content look and behave as expected.
The defaults can be overridden to tweak the generated CSS and adapt it to the
needs of a project.

Note that the plugin is designed to only provide the minimal styles that are
needed in every project; it does not involve itself with how the final product
will look.

Install
=======

    sudo gem install compass-treesaver-plugin

If you are using [Bundler](http://gembundler.com/), for example in a Rails project,
you can simply add the gem to your Gemfile.

    group :development do
      gem 'compass-treesaver-plugin'
    end

Create A Project
================

    compass create <project name> -r compass-treesaver-plugin -u treesaver

Use the static CSS file (optional)
==================================

You can still reap some of the benefits of this plugin even if you do not use Compass in
your project: you can download a pre-generated CSS file ([minified](https://github.com/downloads/zephirworks/compass-treesaver-plugin/treesaver_static.min.css) or [readable](https://github.com/downloads/zephirworks/compass-treesaver-plugin/treesaver_static.css))
and add it to your project. You can then override the provided styles or add your
own in that file (not recommended) or in a separate file that you include *after*
this one.

You can also build it yourself:

    rake build

This will generate a `treesaver_basic.css` file in the current directory. This
process however will call none of the optional macros, so you will be missing
out on many useful features.

Macros and classes
==================

The macros provided by this plugin are separated in four modules:

* Basic
* Chrome
* Grid
* Layout (experimental)

In addition, the plugin provides simple CSS reset styles that guarantee correct
measure calculations with Treesaver.

Some of the macros are invoked immediately, and the corresponding CSS is always
generated. Other macros are provided as tools to aid in developing your own CSS;
you can choose whether to call them, and you can pass non-default values as needed.

Basic module
------------

These macros provide basic styling: setting `overflow: hidden` on the `body` and
Treesaver containers, establishing a `line-heigh` grid and so on. They are
automatically included when the plugin is loaded.

Configuration:

* `$treesaver-line-height`  The `line-height` to use for Treesaver content.
Defaults to 24px.


Chrome module
-------------

These macros aid in setting up [chromes](https://github.com/Treesaver/treesaver/wiki/Chrome).
The following macro is always loaded:

* `treesaver-chrome-size()`

Generates styles that make sure that "normal" chromes are only used on devices
bigger than the given width (configured with `$treesaver-chrome-maximum-mobile-width`,
480px by default), and small chromes are used on
smaller devices.

To take advantage of this feature, your resources file must use the `small`
class on chromes designed for small-screen devices, e.g.:

    <div class="chrome">
      <!-- desktop, iPad etc -->
      <div class="viewer"></div>
      <div class="controls"></div>
    </div>

    <div class="chrome small">
      <!-- iPhone and other mobiles -->
      <div class="viewer"></div>
      <div class="controls"></div>
    </div>

In the current release none of the following macros is called automatically; you
need to call one of them explicitly. This may change in the future.

* `treesaver-chrome-viewer()`

Sets up the "viewer" to take up the whole screen. Use it when you don't want a
controls bar, perhaps because you are using a native shell to provide navigation.

* `treesaver-chrome-viewer-with-top-controls($controls-height: 30px)`
* `treesaver-chrome-viewer-with-bottom-controls($controls-height: 30px)`

Sets up a controls bar with the provided height (30px by default), with the
viewer taking up the remaining height. The former macro will put the controls
at the top of the page, the latter at the bottom. Minimal styling is provided
for the controls, aligning `left` and `right` buttons to their respective sides.

Configuration:

* `$treesaver-chrome-maximum-mobile-width`  The cutoff point for chromes for
small-screen devices. Any device wider than this will use "normal" grids,
anything smaller will use "small" chromes.
Defaults to 480px (the width of an iPhone in landscape orientation).


Grid module
-----------

This set of macros takes care of the minimal styles necessary to set up
grids of different sizes, while retaining control over their use on big- and
small-screen devices. They are automatically called when the plugin is loaded.

In particular:

* grids marked for mobile (`class='mobile'`) will never be available on
big-screen devices;
* small-screen mobile devices will never use non-mobile grids;
* grids marked for mobile viewed on small-screen mobile devices will be set up
to be exactly `$treesaver-grid-smallscreen-width` wide (300px by default).


Layout module
-------------

NOTE: these macros are experimental, they may change or be removed in a future
release.

* `treesaver-layout-setup($width, $margin, $steps)`

Sets up a set of classes that can be applied to columns and containers to
determine their width and position. The mandatory arguments are:

* $width: the width of a single column;
* $margin: the width the gutter between columns;
* $steps: the number of classes to generate; in practice, the maximum number of
columns.

The following classes will be generated:

* `cols-1`, `cols-2`…`cols-n` declare a `column` or `container` whose width
is 1x, 2x or 3x wide;
* `col-1`, `col-2`…`col-n` assign a `column` or `container` to start in the
given horizontal position in the grid.

For instance, given the following resource:

    <div class="grid article cols-2 page-1">
      <div class="container cols-2" data-sizes="title"></div>
      <div class="container cols-2" data-sizes="author"></div>
      <div class="column"></div>
      <div class="container col-2" data-sizes="thumbnail"></div>
      <div class="column col-2"></div>
    </div>

calling `treesaver-layout-setup(300px, 20px, 3)` would result in:

* grid: `width: 620px`;
* title and author: `width: 620px`;
* a column starting from the first "slot" with `width: 300px`;
* a container starting from the left with `width: 300px`;
* a column starting on the second "slot" (that is, with `margin-left: 320px`) with `width: 300px`.
