require "rails_helper"

RSpec.feature "Smoke Spec" do
  scenario "works" do
    visit root_path

    expect(page).to have_content "RedDotRubyConf 2016"
  end
end
