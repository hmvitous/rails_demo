feature 'User can edit' do

    before do
        create(:article, title: 'Breaking news', content: 'Some breaking news')
        visit root_path
    end

    it 'an article' do
        click_on 'Edit'
        fill_in 'Title', with: 'News'
        fill_in 'Text', with: 'Normal news'
        click_on 'Save Article'
    end







end