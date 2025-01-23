require_relative "fields/markdown_field"

module Avo
  module MarkdownField
    class Engine < Rails::Engine
      isolate_namespace Avo::MarkdownField

      initializer "avo-markdown_field.init" do |app|
        app.routes.append do
          mount Marksmith::Engine => "/marksmith"
        end

        ActiveSupport.on_load(:avo_boot) do
          Avo.plugin_manager.register :markdown

          Avo.plugin_manager.register_field :markdown, Avo::MarkdownField::Fields::MarkdownField

          Avo.asset_manager.add_stylesheet "marksmith"
        end
      end
    end
  end
end
