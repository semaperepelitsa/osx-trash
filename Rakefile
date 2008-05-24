require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/gempackagetask'

$LOAD_PATH.unshift 'lib'
require 'osxtrash/version'

$KCODE = "UTF-8"

task :default => [:test_units]

desc "Run basic tests"
Rake::TestTask.new("test_units") do |t|
  t.pattern = 'test/*_test.rb'
  t.verbose = false
  t.warning = true
end

PKG_NAME = 'osx-trash'
PKG_VERSION = OSXTrash::VERSION
PKG_FILES = FileList[
  '[A-Z]*', 
  'bin/**/*',
  'lib/**/*.rb',
]

Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = "#{PKG_NAME} -- Mac OS X Trash Manipulation"
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('bin/*')
end

spec = Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.summary = "Mac OS X Trash Manipulation"
  s.name = PKG_NAME
  s.version = PKG_VERSION
  s.requirements << 'Mac OS X 10.5'
  s.requirements << 'RubyCocoa'
  s.require_path = 'lib'
  s.files = PKG_FILES
  s.has_rdoc = true
  s.bindir = 'bin'
  s.executables = ['trash']
  s.description = <<-EOF
  Manipulate the Mac OS X Finder's Trash using Scripting Bridge and RubyCocoa.
  EOF
  
  s.author = "Dave Dribin"
  s.homepage = "http://www.dribin.org/dave/software/osx-trash/"
  s.rubyforge_project = 'osx-trash'
end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.need_zip = true
  pkg.need_tar = true
end
