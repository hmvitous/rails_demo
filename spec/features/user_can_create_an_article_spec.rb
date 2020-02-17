feature 'User can create an article' do
  before do
    visit root_path
    click_on 'New Article'
    end
  end

  context "Successfully create an article" do
    before do
    fill_in 'Title', with 'Massive Storm in the Atlantic'
    fill_in 'Content', with 'Fisherman worried about possible damage'
    click_on 'Create Article'
    end

    it 'User should be on article show page' do
      article = Article.find_by title: 'Massive Storm in the Atlantic'
      expect(current_path).to eq article_path(article)
    end
        
    it 'User should see success message' do
      expect(page).to have_content 'Article was successfully created.'
    end

        
    it 'User should see article content' do
      expect(page).to have_content 'Fisherman worried about possible damage!'
    end
  end
end