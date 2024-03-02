# frozen_string_literal: true

module ComponentHelper
  def navigation_item(text, target, options = {})
    active = options[:active] || request.path == target
    icon = options[:icon] || nil

    render(Navbar::Navlink::Component.new(target:, text:, active:, icon:))
  end

  def navbar_button(text, target, options = {})
    active = options[:active] || request.path == target
    icon = options[:icon] || nil
    method = options[:method] || :get
    custom_class = options[:class] || nil

    render(Navbar::Button::Component.new(target:, text:, icon:, method:, custom_class:))
  end

  def navbar_separator
    render(Navbar::Separator::Component.new)
  end
end
