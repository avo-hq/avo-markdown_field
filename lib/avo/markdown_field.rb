require "zeitwerk"
require "avo"
require "avo/markdown_field/version"
require "avo/markdown_field/engine"
require "marksmith"

loader = Zeitwerk::Loader.for_gem_extension(Avo)
loader.setup

module Avo
  module MarkdownField
    # Your code goes here...d
  end
end
