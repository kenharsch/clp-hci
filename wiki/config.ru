# This file is used by Rack-based servers to start the application.



#!/usr/bin/env ruby
require 'rubygems'
require 'gollum/app'

gollum_path = File.expand_path('/wiki', __FILE__) # CHANGE THIS TO POINT TO YOUR OWN WIKI REPO
wiki_options[:css] = true
wiki_options = {:universal_toc => false}
Precious::App.set(:gollum_path, gollum_path)
Precious::App.set(:default_markup, :markdown) # set your favorite markup language
Precious::App.set(:wiki_options, wiki_options)
run Precious::App