Rails 6 index filtering
========

An example of how index filtering can be achieved without bloating your controller.

For more info about this repo, read the associated [blog post](https://ifiwere.me/technology/2020/10/09/clean_index_filtering_rails.html)

Getting Started
---
Clone repo and run `bundle install` to install any necessary gems.
To populate the app with some test data you can run `rake populate_database`

To see the filtering in action, simply add some url params to the users index.
e.g.

http://localhost:3000/users?country=Congo&last_name=Grady

## License

The project is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).