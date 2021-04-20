
RSpec.describe Article, type: :model do
  describe 'DB table' do 
    it { is_expected
      .to have_db_column(:title)
      .of_type(:string) }
  end

  describe 'Factory' do
    it 'is expected to be vaild' do 
      expect(create(:article)).to be_valid
    end
  end
end
