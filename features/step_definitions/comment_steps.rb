
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

Then(/^I should see a "([^"]*)" form$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I fill the "([^"]*)" field with "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I will fill the email field with "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click the "([^"]*)" button$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)" on the article page$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
