# frozen_string_literal: true

require "test_helper"

module PageHeader
  class ComponentTest < ViewComponent::TestCase
    def test_renders
      component = build_component(title: "Welcome to the Jungle")

      render_inline(component)

      assert_selector "div"
    end

    private
      def build_component(**options)
        PageHeader::Component.new(**options)
      end
  end
end
