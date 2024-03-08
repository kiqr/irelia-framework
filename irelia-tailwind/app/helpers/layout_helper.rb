# frozen_string_literal: true

module LayoutHelper
  def container(&block)
    render(Container::Component.new, &block)
  end

  def page_header(**arguments)
    render(PageHeader::Component.new(**arguments))
  end
end
