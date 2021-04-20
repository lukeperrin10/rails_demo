RSpec.describe 'GET /api/articles', type: :request do
  describe 'successfully' do
    before do 
      get '/api/articles'
    end

    it 'is expected to respond with status 200' do
      expect(response).to have_http_status 200
    end

    it 'is expected to return all articles' do
      expect(JSON.parse(response.body)['articles'].count).to eq 3
    end

    it 'is expected to return article titles' do
      expect(JSON.parse(response.body)['articles'].first['title']).to eq 'This is an awesome article'
    end
  end
end