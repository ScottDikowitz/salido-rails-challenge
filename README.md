#Salido Rails Challenge
This app allows you to search for wines using ABC's wine API.
Click the search link and enter a search query, a min and/or max price.
Whenever results are returned, they're added to salido's database if
it's not already in there.

you have the option of clicking on a link and seeing its own page for more
details and actions. On the show page, you can click edit to change any field,
or delete it from salido's database.

##Testing
API tests are included to test editing, deleting, and ensuring some fields
are unique. I am using rspec, faker and FactoryGirl to accomplish this.

##To use
Clone the repo or download the zip. Bundle install,
and run `bundle exec figaro install`
Get a wine API key from [Wine API][wine-api].
in your newly created application.yml file, insert in your WINE_API_KEY
It should work at this point after you run it on a rails server.

[wine-api]: https://api.wine.com
