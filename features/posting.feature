In order to share my thoughts with the world
As an author
I want to create and view posts

Feature: Posting

  Scenario: Create post
    Given I am on the home page
    When I click on the "New Post" button
    And I fill in the title field with "My Awesome Post"
    And I fill in the body with "I have lots of good thoughts you guys."
    And I click on the "Submit Post" button
    And I go to the posts index page
    Then I should see "My Awesome Post" as the title
    And I should see "I have lots of good thoughts you guys." as the body

  Scenario: Update post
    Given I am on the home page
    When I click on the "New Post" button
    And I fill in the title field with "My Awesome Post"
    And I fill in the body with "I have lots of good thoughts you guys."
    And I click on the "Submit Post" button
    And I view the post
    And I click on the "Edit Post" button
    And I change the body to "My previous thoughts were dead awful, but these are pretty great."
    And I click the "Submit Post" button
    And I go to the index page
    Then I should see "My Awesome Post" as the title
    And I should see "My previous thoughts were dead awful, but these are pretty great." as the body