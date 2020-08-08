# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'posts/show.html.erb', type: :view do
  before do
    assign :post, create(:post)
  end
  
  it 'renders ...' do
    # render
    # assert_select
    # expect(rendered).to match()
    skip '...'
  end
end
