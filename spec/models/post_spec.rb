# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validations' do
    # shoulda matchers
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :body }

    # rspec matchers
    it 'is invalid without a title' do
      post = build :post, title: nil
      expect(post).to_not be_valid
    end

    it 'is invalid without a body' do
      post = build :post, body: nil
      expect(post).to_not be_valid
    end
  end
end
