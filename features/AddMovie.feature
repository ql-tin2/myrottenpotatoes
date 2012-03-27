Feature: User can mannually add movie

Scenario: Add a movie
	Given I am on the RottenPotatoes homepage
	When I follow "Add new movie"
	Then I should be on the Create New Movie page
	When I fill in "Title" with "Men in Black"
	And I select "PG-13" from "Rating"
	And I press "Save Changes"
	Then I should be on the RottenPotatoes homepage
	And I should see "Men in Black"
