= Overview

osx-trash is a command line program called trash
to manipulate the trash on Mac OS X. It uses AppleScript via Scripting Bridge
on top of RubyCocoa to manipulate the trash, just like the Finder does. Here's
a simple example:

  % touch foo bar baz
  % trash -l
  % trash foo ba*
  % trash -l
  /Users/dave/.Trash/foo
  /Users/dave/.Trash/bar
  /Users/dave/.Trash/baz
  % trash -e
  % trash -l

Using Finder's AppleScript has a number of benefits compared to shell scripts
that just move files to ~/.Trash. First, it creates unique names when there
are collisions:

  % touch foo
  % trash foo
  % touch foo
  % trash foo
  % trash -l
  /Users/dave/.Trash/foo
  /Users/dave/.Trash/foo 20-38-20

It also handles trashes on different volumes properly:

  % touch foo
  % trash foo
  % touch /Volumes/DiskImage/bar
  % trash /Volumes/DiskImage/bar
  % trash -l
  /Users/dave/.Trash/foo
  /Volumes/DiskImage/.Trashes/501/bar

= Links

* Project page: http://www.dribin.org/dave/osx-trash/
* RubyForge project: http://rubyforge.org/projects/osx-trash/
* Online documentation: http://osx-trash.rubyforge.org/api/
