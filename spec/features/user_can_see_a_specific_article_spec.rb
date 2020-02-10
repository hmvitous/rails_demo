feature 'User can see a specific article' do
    before do
        create(:article, title: 'Breaking news', content: 'Some breaking news')
        create(:article, title: 'Economic news', content: 'Saving money is pointless')

        visit root_path
        click_on 'Breaking news'
    end

    context 'Article displays' do
        it 'title' do
            expect(page).to have_content 'Breaking news'
        end

        it 'content' do
            expect(page).to have_content 'Some breaking news'
        end
    end
end