# frozen_string_literal: true

require "test_helper"

class Navbar::Container::ComponentTest < ViewComponent::TestCase
  def test_renders
    component = build_component

    render_inline(component)

    assert_selector "div"
  end

  private
    def build_component(**options)
      Navbar::Container::Component.new(**options)
    end
end
