Given(/^I am on the index page$/) do
  VCR.use_cassette('rails_issues') do
    visit root_path
  end
  expect(page).to have_content('Issues')
end

Then(/^I see issues ordered by date$/) do
  expect(page).to have_content('Shortcuts for `request.params[key]` and')
  expect(page).to have_content('15/04/2016')
end
