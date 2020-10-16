feature 'Home page' do
  scenario 'User enters homepage' do
    visit('/')
    expect(page).to have_content ('Hey, you!')
  end 
end
