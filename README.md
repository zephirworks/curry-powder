Curry Powder (or just Curry)
============================

Curry is a library of graphic templates for [Treesaver](http://treesaverjs.com/).

Curry Powder is the framework at the basis of Curry: it offers a set of helpers
to build your own theme.

Curry is implemented on top of [Compass](http://compass-style.org/), but
individual Curries are also delivered as compiled CSS for stand-alone use.

Background information
======================

[Treesaver](http://treesaverjs.com/) is a JavaScript framework for creating
magazine-style layouts using standards-compliant HTML and CSS. The
[documentation](https://github.com/Treesaver/treesaver/wiki) for Treesaver,
the [walkthrough](https://github.com/Treesaver/treesaver/wiki/Walkthrough) in
particular, provides detailed information on creating the content markup.

However, developing a suitable stylesheet for the different devices is still
an involved process. Curry strives to simplify this task for both novices
and experienced users, by providing a set of Compass macros that set up
reasonable defaults to make Treesaver content look and behave as expected.
The defaults can be overridden to tweak the generated CSS and adapt it to the
needs of a project.

Curry Powder (the project you are looking at) only provide the minimal styles
that are needed in every project; it does not involve itself with how the
final product will look. If you are looking for a ready-to-use template, have
a look at [available Curries](https://github.com/zephirworks/curry-powder/wiki).

Install
=======

    sudo gem install curry-powder

If you are using [Bundler](http://gembundler.com/), for example in a Rails project,
you can simply add the gem to your Gemfile.

    group :development do
      gem 'curry-powder'
    end

Create A Project
================

    compass create <project name> -r curry -u curry

Documentation
=============

See the [wiki](https://github.com/zephirworks/curry-powder/wiki) for documentation on the available
mixins and variables.

License
=======

Curry Powder is released under the MIT license.

Each single Curry may be released under a difference license.
