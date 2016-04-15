Given(/^an user enters a username$/) do
  fill_in 'username', with: 'rails'
end

Given(/^an user enters a repository name$/) do
  fill_in 'repo_name', with: 'rails'
  click_button 'Submit'
end

Then(/^user is show the repository's issues$/) do
  expect(page).to have_content('Shortcuts for `request.params[key]`')
  expect(page).to have_content('removed without deprecation')
end
