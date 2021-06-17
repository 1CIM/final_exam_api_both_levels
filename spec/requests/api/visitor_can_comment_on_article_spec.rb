RSpec.describe 'POST /api/articles/:id/comments', type: :request do
  let(:article) { create(:article) }

  describe 'Successfully creates a commetn' do
    before do
      post "/api/articles/#{article.id}comments", params: {
        body: 'Wow such hook! u go kill?!'
      }
    end

    it 'is expected to return a 201 status' do
      expect(response).to have_http_status 201
    end

    it 'is expected to respond with a success message' do
      expect(response_json['message']).to eq 'Nice comment bro'
    end

    it 'is expected to add a comment to the article' do
      expect(artice.comments.count).to eq 1
    end

    it 'is expected to create an instance of a comment with body content' do
      expect(Comment.last['body']).to eq 'Wow such hook! u go kill?!'
    end
  end
end