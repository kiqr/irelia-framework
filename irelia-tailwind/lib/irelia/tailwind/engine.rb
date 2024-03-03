# frozen_string_literal: true

require "view_component-contrib"

module Irelia
  module Tailwind
    class Engine < ::Rails::Engine
      config.autoload_paths << Irelia::Tailwind::Engine.root.join("lib")
      config.autoload_paths << Irelia::Tailwind::Engine.root.join("app")

      config.view_component.preview_paths << Irelia::Tailwind::Engine.root.join("app", "frontend", "components")

      # Add the app/javascript directory to the asset pipeline
      initializer "saasonrails.assets.precompile" do |app|
        app.config.assets.paths << Irelia::Tailwind::Engine.root.join("app", "javascript")
        app.config.assets.precompile += %w[irelia_tailwind_manifest]
      end

      # Add the importmap paths
      initializer "irelia-tailwind.importmap", before: "importmap" do |app|
        app.config.importmap.paths << Irelia::Tailwind::Engine.root.join("config/importmap.rb")
      end
    end
  end
end
