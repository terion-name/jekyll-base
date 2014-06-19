# Jekyll bundle bootstrap

Bundled with [bundler](http://bundler.io/) with [asset pipeline](https://github.com/matthodan/jekyll-asset-pipeline), [sass](http://sass-lang.com/), [compass](http://compass-style.org/), [coffeescript](http://coffeescript.org/), [YUI compressor](http://yui.github.io/yuicompressor/)

## Requirements
* [git](http://git-scm.com/)
* [ruby](https://www.ruby-lang.org/)
* [bundler](http://bundler.io/)
* [java](http://java.com/ru/download/) (for YUI Compressor)
* [nodejs](http://nodejs.org/)
* [bower](http://bower.io/)

## Run

```sh
cd /path/to/project/
bundle install
bower install
bundle exec jekyll serve -w
```

And open http://localhost:4000

## To run in Vagrant

Install [Vagrant](http://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/)

```sh
cd /path/to/project/
vagrant up
vagrant ssh
cd /vagrant
bundle install
bower install
bundle exec jekyll serve -w
```

And open http://localhost:4000

## Assets

Assets Pipeline included. See instructions here: https://github.com/matthodan/jekyll-asset-pipeline#jekyll-asset-pipeline

Compass included

## For multilanguage sites

* Add to _Gemfile_: `gem 'jekyll-multiple-languages-plugin'`
* Create file `/src/_plugins/multi_language.rb`
* Put there: `require 'jekyll/multiple/languages/plugin'`
* Run `bundle install`

Usage instructions can be found here: https://github.com/screeninteraction/jekyll-multiple-languages-plugin#usage