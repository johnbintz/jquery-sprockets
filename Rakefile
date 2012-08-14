#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'httparty'

DIR = Pathname('vendor/assets/javascripts')

JQ_VERSIONS = %w{1.8.0 1.7.2 1.6.4}
JQ_URL = "http://code.jquery.com/jquery-%s.js"

JQUI_VERSION = '1.8.22'
JQUI_URL = "http://ajax.googleapis.com/ajax/libs/jqueryui/%s/jquery-ui.min.js"

desc 'Download all versions of jQuery and make the newest one the primary one'
task(:download) do
  DIR.rmtree if DIR.directory?
  DIR.mkpath

  most_recent = JQ_VERSIONS.sort { |a, b| Gem::Version.new(b) <=> Gem::Version.new(a) }.first

  JQ_VERSIONS.each do |version|
    puts version
    data = HTTParty.get(JQ_URL % version, :format => :text)

    DIR.join("jquery-#{version}.js").open('w') { |fh| fh.print data }

    if version == most_recent
      DIR.join("jquery.js").open('w') { |fh| fh.print data }
    end
  end

  data = HTTParty.get(JQUI_URL % JQUI_VERSION, :format => :text)
  DIR.join("jquery-ui.js").open('w') { |fh| fh.print data }
end

