# frozen_string_literal: true

require "test_helper"

module Navbar
  module Button
    class ComponentTest < ViewComponent::TestCase
      def test_renders
        component = build_component(target: "/", text: "Home", icon: "fa fa-home")

        render_inline(component)

        assert_selector "button", text: "Home"
        assert_selector "i.fa.fa-home"
      end

      private
        def build_component(**options)
          Navbar::Button::Component.new(**options)
        end
    end
  end
end
