feature 'User can edit' do

    before do
        create(:article, title: 'Breaking news')
        visit root_path
        expect(page).to have_content 'Breaking news'

    end

    it 'an article' do
        click_on 'Edit Article'
        
    end







end