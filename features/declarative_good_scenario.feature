Feature: movies when added should appear in movie list

Scenario: view movie list after adding movie (imperative and non-DRY)

  Given I have added "Zorro" with rating "PG-13"
  And   I have added "Apocalypse Now" with rating "R"
#  Then I should see "Apocalypse Now" before "Zorro" on the RottenPotatoes homepage
