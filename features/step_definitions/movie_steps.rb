Given /I have added "(.*)" with rating "(.*)"/ do |title, rating|
  Given %Q{I am on the Create New Movie page}
  When  %Q{I fill in "Title" with "#{title}"}
  And   %Q{I select "#{rating}" from "Rating"}
  And   %Q{I press "Save Changes"}
end

#Then /I should see "(.*)" before "(.*)" on (.*)/ do |string1, string2, path|
#  Given %Q{I am on #{path}}
#  regexp = Regexp.new ".*#{string1}.*#{string2}"
#  page.body.should =~ regexp
#end


#Then /I should see "(.*)" before "(.*) on (.*)"/ do |string1, string2, path|
Then /I should see "(.*)" before "(.*)" on (.*)/ do |string1, string2, path|
  puts "Test line"
  puts Movie.all
  puts "after printing movie list"
  
  Given %Q{I am on #{path}}
  regexp = Regexp.new ".*#{string1}.*#{string2}"
  page.body.should =~ regexp
end
