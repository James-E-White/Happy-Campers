require 'rails_helper'

RSpec.describe "welcome/index", type: :view do 
    it 'displays a welcome message' do 
        render
        expect(rendered).to have_content("Welcome")
    end
end