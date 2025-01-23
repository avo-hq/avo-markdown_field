$:.push File.expand_path("lib", __dir__)

require "avo/markdown_field/version"

Gem::Specification.new do |spec|
  spec.name = "avo-markdown_field"
  spec.version = Avo::MarkdownField::VERSION
  spec.summary = "Marksmith field for Avo."
  spec.description = "Marksmith field for Avo."
  spec.authors = ["Adrian Marin"]
  spec.email = "adrian@adrianthedev.com"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,lib}/**/*", "Rakefile", "README.md", "avo-markdown_field.gemspec"]
  end
  spec.files.reject! { |file_name| %w[app/javascript].any? { |rejected_file| file_name.include? rejected_file } }

  spec.homepage = "https://avohq.io"

  spec.add_dependency "marksmith"
end
