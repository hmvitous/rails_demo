feature 'User can' do
    before do
        visit articles_new_path
    end

    it 'Successfully create an article' do
        fill_in 'Title',  with: 'Happy Holidays'
        fill_in 'Text', with: 'Buy your gifts now!'
        click_on 'Save Article'
    end

end

        