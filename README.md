# RailsRoutesApiEngine

Exposes your Rails app's routes via an API endpoint

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'rails_routes_api_engine'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install rails_routes_api_engine
```

Mount the engine by adding it to your routes file

```
Rails.application.routes.draw do
  mount RailsRoutesApiEngine::Engine => "/rails_routes_api_engine"
end
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
