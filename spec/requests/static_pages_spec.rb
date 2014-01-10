require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Chesshall" }
  
  subject {page}

  shared_examples_for "all static pages" do 
    it { should have_selector('h1',   text: heading1) }
    it { should have_selector('h2',   text: heading2) }
    it { should have_selector('title',   text: full_title(page_title)) }
  end

  describe "Home page" do
    before {visit root_path}
    let(:heading2)      { 'Chesshall' }
    let(:page_title)    { '' }
  end

  describe "Help page" do
    before {visit help_path}
    let(:heading1)      { 'Help' }
    let(:page_title)    { 'Help' }
  end

  describe "About page" do
    before {visit about_path}
    let(:heading1)      { 'About' }
    let(:page_title)    { 'About Us' }
  end

  describe "Contact page" do
    before {visit contact_path}
    let(:heading1)      { 'Contact' }
    let(:page_title)    { 'Contact' }
  end

  # it "should have the right links on the layout" do
  #   visit root_path
  #   click_link "About"
  #   page.should have_selector 'title', text: full_title('Help')
  #   click_link "Contact"
  #   page.should have_selector 'title', text: full_title('Contact')
  #   click_link "Home"
  #   click_link "Sign up now!"
  #   page.should have_selector 'title', text: full_title('Sign up')
  # end
end