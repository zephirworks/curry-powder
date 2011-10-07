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
a look at [available Curries](https://github.com/zephirworks/curry/wiki).

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

Use the static CSS file (optional)
==================================

You can still reap some of the benefits of this plugin even if you do not use Compass in
your project: you can download a pre-generated CSS file ([minified](https://github.com/downloads/zephirworks/curry/curry_static.min.css) or [readable](https://github.com/downloads/zephirworks/curry/curry_static.css))
and add it to your project. You can then override the provided styles or add your
own in that file (not recommended) or in a separate file that you include *after*
this one.

You can also build it yourself:

    rake build

This will generate a `curry_static.css` file in the current directory. This
process however will call none of the optional macros, so you will be missing
out on many useful features.

Documentation
=============

See the [wiki](https://github.com/zephirworks/curry/wiki) for documentation on the available
mixins and variables.
