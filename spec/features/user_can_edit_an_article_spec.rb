feature 'User can' do

    before do
        create(:article, title: 'Breaking news')
        visit root_path

    end

    it 'edit an article' do
        click_on 'Edit Article'
        
    end







end