require 'spec_helper'

feature 'edges page', js: true do
   scenario "see all the list of all edges" do
       create_list(:edge, 3)
       p Edge.all
       visit('/#/edges')
       expect(page).to have_css('ul#edges>li', count: 3)
   end
end
