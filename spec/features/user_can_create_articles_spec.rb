feature 'User can' do
    before do
        visit new_article_path
    end

    context 'Successfully create an article [Happy Path]' do
        before do
            fill_in 'Title',  with: 'Happy Holidays'
            fill_in 'Content', with: 'Buy your gifts now!'
            click_on 'Create Article'
        end

        it 'User should be on article show page' do
            visit articles_path
            article = Article.find_by(title: 'Happy holidays')
            expect(current_path).to eq article_path(article)
        end
                
        it 'User should see success message' do
            expect(page).to have_content 'Article was successfully created.'
        end
                
        it 'User should see article title' do
            expect(page).to have_content 'Happy holidays'
        end
                
        it 'User should see article content' do
            expect(page).to have_content 'Buy your gifts now!'
        end
    end
                
    context "User doesn't enter a title for the article [Sad Path]" do
        before do
            fill_in 'Content', with: 'Buy your gifts now!'
            click_on 'Create Article'
        end
                
        it 'User should see error message' do
            expect(page).to have_content 'Title cant be blank'
        end
    end

    context 'User doesnt enter a content for the article [Sad Path]' do
        before do
            fill_in 'Title', with: 'Happy holidays'
            click_on "Create Article"
        end

        it 'User should see error message' do
            expect(page).to have_content 'Content cant be blank'
        end
    end
end

        