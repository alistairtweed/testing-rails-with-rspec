# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'posts/index.html.erb', type: :view do
  before do
    assign :posts, create_list(:post, 3)
  end
  
  it 'renders a list of posts' do
    # render
    # assert_select
    skip '...'
  end
end
