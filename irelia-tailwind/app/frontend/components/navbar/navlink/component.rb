# frozen_string_literal: true

class Navbar::Navlink::Component < ApplicationViewComponent
  option :target # required
  option :active, optional: true, default: false
  option :text, optional: true
  option :custom_class, optional: true
end
