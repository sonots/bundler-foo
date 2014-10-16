# Bundler::Foo

This gem provides `rake foo_release` command to release gem on internal rubygems, https://rubygem.foo.jp,
and disable `rake release` command for foolproof. 

## Installation

Write your gem libraries' Gemfile as:

```ruby
source 'https://rubygems.foo.jp'

gemspec
gem 'bundler-foo'
```

And then execute:

    $ bundle

## Usage

### How to release a gem

Modify Rakefile as:

```diff
- require "bundler/gem_tasks"
+ require "bundler/foo/gem_tasks"
```

Run following to release your gem to rubygems.foo.jp. 

```
bundle exec rake foo_release
```

Note that `rake release` is disabled not to release to rubygems.jp mistakenly.

### How to fetch gems from rubygems.foo.jp

Write your application's Gemfile as:

```ruby
source 'https://rubygems.foo.jp'

gem 'your_awesome_foo_gem'
```

And then execute:

    $ bundle

### How to create a new gem

This gem also provides a command to create a skelton for a new gem to be released to https://rubygems.foo.jp.

Run

```
bundle-foo gem GEM
```

instead of

```
bundle gem GEM
```

Example:

```
$ bundle-foo gem bar
      create  bar/Gemfile
      create  bar/.gitignore
      create  bar/lib/bar.rb
      create  bar/lib/bar/version.rb
      create  bar/LICENSE.txt
      create  bar/bar.gemspec
      create  bar/.consolerc
      create  bar/Rakefile
      create  bar/README.md
       force  bar/Gemfile
       force  bar/Rakefile
```

Note that `Gemfile` and `Rakefile` are updated.
