---
title: Blog, a blog generated by blog
author: Jader Brasil
date: 2021-03-23

---

You can also set author, date as above.

blog
====
<center>the most creative named static blog generator</center>
--------------------------------------------------------------

You can use &#36;title, &#36;date, &#36;author, &#36;blog\_title,
&#36;blog\_desc, &#36;blog\_url
or any variable exported in `config`

Config
======
## Basic properties
You must create a config file named "config" in your blogdir

	blog_title="Blog's Name"
	blog_desc="Blog's description"
	blog_url="https://blogs/url"
	blog_author="Default Author"

## Markup syntax
We use [smu](https://github.com/Gottox/smu) as the default markup language.
If you want to use another one,
you can adjust it in the config file

For instance,

	markup="pandoc"
	markup_link="https://pandoc.org/"

or

	markup="lowdown"
	markup_link="https://kristaps.bsd.lv/lowdown/"

But I didn't do a lot of tests on anything other than smu.

## Directories
The standared directories are

	blogdir=$(pwd)
	templ="templ"
	public="public"

### Templates
Templates are in &#36;blogdir/&#36;templ.

For now there are three template files
- post_template.html
template for posts in &#36;blogdir/&#36;posts. This template can't access &#36;postlist variable.
- index_template.html
your first page, the &#36;post variable is filled by parsing the index.md file.
- rss_template.xml
used to generate rss.xml

Usage
=====
Just run `blog` in your source directory.

This directory, &#36;blogdir, must contain the `config` file, and the Directories
&#36;templ and &#36;public.

The index.md file also must be in &#36;blogdir.

BE CAREFUL
==========
The `config` file is just a bash!
If you write the wrong code you can screw it up,
like rewriting cleanf and deleting its source code.

But the `config` file is just a bash!
You can rewrite the functions for a particular use.
Or add something that makes sense to a project but not everyone.
