Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
  # each returned element will be a hash whose key is the table header.
  # you should arrange to add that movie to the database here.
  new_movie = Movie.create(movie)
  end
end

Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end
