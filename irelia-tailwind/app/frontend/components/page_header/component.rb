# frozen_string_literal: true

module PageHeader
  class Component < ApplicationViewComponent
    option :title
    option :subtitle, optional: true
    option :breadcrumb, optional: true
  end
end
