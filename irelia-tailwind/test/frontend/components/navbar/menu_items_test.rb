# frozen_string_literal: true

require "test_helper"

module Navbar
  module MenuItems
    class ComponentTest < ViewComponent::TestCase
      def test_renders
        component = build_component

        render_inline(component)

        assert_selector "div"
      end

      private
        def build_component(**options)
          Navbar::MenuItems::Component.new(**options)
        end
    end
  end
end
