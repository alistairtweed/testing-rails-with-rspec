# frozen_string_literal: true

RSpec.describe '/posts', type: :request do
  # index
  describe 'GET posts_url' do
    it 'renders a successful response' do
      get posts_url
      expect(response).to be_successful
    end
  end

  # show
  describe 'GET post_url' do
    it 'renders a successful response' do
      post = create :post
      get post_url post
      expect(response).to be_successful
    end
  end

  # new
  describe 'GET new_post_url' do
    it 'renders a successful response' do
      get new_post_url
      expect(response).to be_successful
    end
  end

  # edit
  describe 'GET /posts/:id/edit' do
    it 'renders a successful response' do
      post = create :post
      get edit_post_url post
      expect(response).to be_successful
    end
  end

  # create
  describe 'POST posts_url' do
    context 'when post params are valid' do
      let(:valid_post_params) { attributes_for :post }

      it 'creates a new post' do
        expect {
          post posts_url, params: { post: valid_post_params }
        }.to change(Post, :count).by 1
      end

      it 'redirects to the post url' do
        post posts_url, params: { post: valid_post_params }
        expect(response).to redirect_to post_url(Post.last)
      end
    end

    context 'when post params are invalid' do
      let(:invalid_post_params) { attributes_for :post, :invalid }

      it 'does not create a new post' do
        expect {
          post posts_url, params: { post: invalid_post_params }
        }.to change(Post, :count).by 0
      end

      it 'renders a successful response' do
        post posts_url, params: { post: invalid_post_params }
        expect(response).to be_successful
      end
    end
  end

  # update
  describe 'PATCH post_url' do
    context 'when post params are valid' do
      let(:valid_post_params) { attributes_for :post }

      it 'updates the post' do
        post = create :post
        patch post_url(post), params: { post: valid_post_params }
        post.reload
        skip '...'
      end

      it 'redirects to the post url' do
        post = create :post
        patch post_url(post), params: { post: valid_post_params }
        post.reload
        expect(response).to redirect_to post_url(post)
      end
    end

    context 'when post params are invalid' do
      let(:invalid_post_params) { attributes_for :post, :invalid }

      it 'does not update the post' do
        skip '...'
      end

      it 'renders a successful response' do
        post = create :post
        patch post_url(post), params: { post: invalid_post_params }
        expect(response).to be_successful
      end
    end
  end

  # destroy
  describe 'DELETE post_url' do
    it 'destroys the post' do
      post = create :post
      expect {
        delete post_url post
      }.to change(Post, :count).by -1
    end

    it 'redirects to the posts url' do
      post = create :post
      delete post_url post
      expect(response).to redirect_to posts_url
    end
  end
end
