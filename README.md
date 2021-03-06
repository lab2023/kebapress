# Kebapress

## Requirements

Before mounting Kebapress to your application, you will need:

* Ruby ~> 2.0
* Rails ~> 4.0
* Cybele ~> 1.0.0

## Installing Kebapress to Cybele Rails applications

Add the engine to your Gemfile:

```ruby
gem 'kebapress'
```

Bundle install:

```
bundle install
```

Make the installation:

```
rails g kebapress:install
```

Run migrations:

```
rake db:migrate
```

Mount the engine under HQ namespace and add extra routes in config/routes.rb file:

```ruby
namespace :hq do
  mount Kebapress::Engine => '/mount_point' # Example: '/blog'
end

get '/blog/:id', to: 'kebapress/posts#show', as: 'pages'
get '/blog', to: 'kebapress/posts#index'
```

Add blog icon-link to Cybele Rails application's **app/views/layouts/hq/partials/_dock.haml** file. For an example, checkout **example.haml** file.

**NOTE:** If Javascript files don't seem to be loading, please add this line to your host application's **layouts/hq/partials/_footer.haml** (This is a temporary situation)

```
= yield :foot
```

## Bugs and Feedback

If you discover any bugs or want to drop a line, feel free to create an issue on Github

http://github.com/lab2023/kebapress/issues

## Contributing

Once you've made your great commits:

1. Fork it
2. Create a topic branch - `git checkout -b my_branch`
3. Push to your branch - `git push origin my_branch`
4. Create a Pull Request from your branch
5. That's it!

## Credits

![lab2023](http://lab2023.com/assets/images/named-logo.png)

- Kebapress is maintained and funded by [lab2023 - information technologies](http://lab2023.com/)
- Thank you to all the [contributors!](../../graphs/contributors)
- The names and logos for lab2023 are trademarks of lab2023, inc.

## License

Copyright 2014 lab2023 – information technologies
