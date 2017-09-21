require 'rails_helper'

describe 'navigation from the Privacy Policy page' do

  it "navigates to the Privacy Policy" do
    visit privacy_policy_index_path
    click_link("Privacy Policy")
    expect(page).to have_content "Privacy Policy"
  end

  it "navigates to the Copyright page" do
    visit privacy_policy_index_path
    click_link("© 2017")
    expect(page).to have_content "COPYRIGHT"
  end

  it "opens navbar menu" do
    visit privacy_policy_index_path
    find('#toggle').click
    expect(page).to have_content "About"
  end

  it "navigates to the privacy_policy page" do
    visit privacy_policy_index_path
    find('#toggle').click
    click_link("About")
    expect(page).to have_content "About"
  end

  it "navigates to the contact page" do
    visit privacy_policy_index_path
    find('#toggle').click
    click_link("Contact")
    expect(page).to have_content "contact Tom"
  end

  it "navigates back to the gallery page" do
    visit privacy_policy_index_path
    find('#toggle').click
    click_link("Gallery")
    expect(page).to have_content "Tom Kane"
  end
end
