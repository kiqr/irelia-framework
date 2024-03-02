# frozen_string_literal: true

class PageHeader::Component < ApplicationViewComponent
  option :title
  option :subtitle, optional: true
  option :breadcrumb, optional: true
end
