# frozen_string_literal: true

require "application_system_test_case"

class Navbar::SelectAccount::ComponentSystemTest < ApplicationSystemTestCase
  def test_default_preview
    visit("/rails/view_componentsnavbar/select_account/default")

    # assert_text "Hello!"
    # click_on("Click me!")
    # assert_text "Good-bye!"
  end
end
