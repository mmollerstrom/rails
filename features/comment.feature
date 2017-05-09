Feature: List comments on landing page
  As a visitor,
  when I visit the application's landing page, and I view an article,
  I would like to add comment to the specific article

  Background:
    Given the following articles exists
    | title                | content                            | author |
    | A breaking news item | Some really breaking action        | max    |
    | Learn Rails 5        | Build awesome rails applications   | philip |

  Scenario: Adding comments to articles
    When I am on the landing page
    Then I should be able to see "A breaking news item"
    And I should be able to see "Learn Rails 5"
    When I click on "Show Article"
    Then I should visit the "Learn Rails 5" article page
    And I should see "Build awesome rails applications" as the content of the article
    And I should see "Message"
    And I should see "by philip"
    When I fill the "message" field with "Learning rails 5 has been awesome"
    And I fill the "email" field with "max@max.com"
    And I click the "Submit Comment" button
    Then I should see "Learning rails 5 has been awesome"
    And I should see "Posted by: max@max.com"
