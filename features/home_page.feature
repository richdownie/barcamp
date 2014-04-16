Feature: barcamp home page	

Scenario: Verify blackboxd sponsor link is wired up
  * I am on the barcamp homepage
  * I xpath "Blackboxd" "a"
  * I should be on "blackboxd.com"