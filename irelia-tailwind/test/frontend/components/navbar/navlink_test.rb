# frozen_string_literal: true

require "test_helper"

class Navbar::Navlink::ComponentTest < ViewComponent::TestCase
  def test_renders
    component = build_component(target: "/", text: "Home")

    render_inline(component)

    assert_selector "a", text: "Home"
  end

  private
    def build_component(**options)
      Navbar::Navlink::Component.new(**options)
    end
end
