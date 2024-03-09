# frozen_string_literal: true

module PageHelper
  def container(&block)
    render(Page::Container::Component.new, &block)
  end

  def page_header(**arguments)
    render(Page::Header::Component.new(**arguments))
  end
end
