# Kebapress

NOTE: Do not use this gem until v1.0.0

## Requirements

Before mounting Kebapress to your application, you will need:

* Ruby ~> 2.0
* Rails ~> 4.0
* Cybele ~> 1.0.0

## Installing Kebapress to Cybele Rails applications

Add the engine to your Gemfile:

```
gem kebapress
```

Bundle install:

```
bundle install
```

Copy migrations

```
rake kebapress:install:migrations
```

Run migrations:

```
rake db:migrate
```

Mount the engine in config/routes.rb file:

```
mount Kebapress::Engine => '/mount_point' # Example: '/blog'
```

Add blog icon-link to Cybele Rails application's **app/views/layouts/hq/partials/_dock.haml** file. For an example, checkout **example.haml** file.

## Bugs and Feedback

If you discover any bugs or want to drop a line, feel free to create an issue on Github

http://github.com/kebab-project/kebapress

## Contributing

Once you've made your great commits:

1. Fork Template
2. Create a topic branch - `git checkout -b my_branch`
3. Push to your branch - `git push origin my_branch`
4. Create a Pull Request from your branch
5. That's it!

## Credits

- Kebapress is maintained and funded by [lab2023 - internet technologies](http://lab2023.com/)
- The names and logos for lab2023 are trademarks of lab2023, inc.

## License

Copyright 2012 lab2023 – internet technologies
