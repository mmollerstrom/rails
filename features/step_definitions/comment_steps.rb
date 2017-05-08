
Then(/^I should be able to see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

When(/^I click on "([^"]*)"$/) do |link|
  click_link(link, :match => :first)
end

Then(/^I should visit the "([^"]*)" article page$/) do |title|
  article = Article.where(title: title).first
  visit article_path(article)
end

Then(/^I should see "([^"]*)" as the content of the article$/) do |content|
  expect(page).to have_content content
end

Then(/^I should see a "([^"]*)" form$/) do |content|
  expect(page).to have_content content
end

When(/^I fill the "([^"]*)" field with "([^"]*)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

When(/^I will fill the email field with "([^"]*)"$/) do |content|
  fill_in email field, with: content
end

When(/^I click the "([^"]*)" button$/) do |arg1|
  click_button arg1
end

Then(/^I should see "([^"]*)" on the article page$/) do |content|
  expect(page).to have_content content
end
