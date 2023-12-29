require 'rails_helper'

RSpec.describe "Index", type: :feature do
  it 'shows all markets and their top level attributes' do
    visit '/markets'

    expect(page).to have_content("Markets Index")
  end
end