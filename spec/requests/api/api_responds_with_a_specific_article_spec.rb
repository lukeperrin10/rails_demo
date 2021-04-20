RSpec.describe 'GET /api/articles/:id', type: :request do

  let!(:article) {create(:article, title: 'Fun with RSpec!', body: 'This is the content of my article...') }

  before do
    get "/api/articles/#{article.id}"
  end

  it 'is expected to respond with 200' do
    expect(response).to have_http_status 200
  end

  it 'is expected to have a title' do
    expect(JSON.parse(response.body)['article']['title']).to eq 'Fun with RSpec!'
  end

  it 'is expected to include the article body' do
    expect(JSON.parse(response.body)['article']['body']).to eq 'This is the content of my article...'
  end
end