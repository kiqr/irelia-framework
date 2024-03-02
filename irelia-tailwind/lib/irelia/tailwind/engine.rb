# frozen_string_literal: true

module Irelia
  module Tailwind
    class Engine < ::Rails::Engine
      config.autoload_paths << Irelia::Tailwind::Engine.root.join("lib")
      config.autoload_paths << Irelia::Tailwind::Engine.root.join("app")

      config.view_component.preview_paths << Irelia::Tailwind::Engine.root.join("app", "frontend", "components")
    end
  end
end
