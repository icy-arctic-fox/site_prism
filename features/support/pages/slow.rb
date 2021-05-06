# frozen_string_literal: true

class Slow < SitePrism::Page
  set_url '/slow.htm'
  set_url_matcher(/slow\.htm$/)

  element :last_link, 'a', text: 'slow link4'
  element :invisible, 'input.always_invisible'
  elements :even_links, '.even'
  element :undefined, '.not_here'
  section :first_section, Blank, '.slow-section', text: 'First Section'
  sections :all_sections, Blank, '.slow-section'

  # To test slow elements inside a section
  section :body, 'body' do
    elements :all_links, '[href="slow.htm"]'
    element :undefined, '.not_here'
  end
end
