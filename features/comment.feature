Feature: List comments on landing page
  As a visitor,
  when I visit the application's landing page, and I view an article,
  I would like to add comment to the specific article

  Background:
    Given the following articles exists
    | title                | content                            |
    | A breaking news item | Some really breaking action        |
    | Learn Rails 5        | Build awesome rails applications   |

  Scenario: Adding comments to articles
    When I am on the landing page
    Then I should be able to see "A breaking news item"
    And I should be able to see "Learn Rails 5"
    When I click on "show article"
    Then I should visit the "Learn Rails 5" article page
    And I should see "Build awesome rails applications" as the content of the article
    And I should see a "comment" form
    When I fill the "comment" field with "Learning rails 5 has been awesome"
    And I will fill the email field with "max@max.com"
    And I click the "submit comment" button
    Then I should see "Comments added" on the article page
    And I should see "Learning rails 5 has been awesome"
    And I should see "Posted by: max@max.com"
