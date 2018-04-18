# KAdmin
Simple admin interface for data administration.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'k_admin'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install k_admin
```

## Usage
To add a resource to the admin dashboard just run the following command

```ruby
rails g admin_resource model_name
```

That'll create the following files, which you can afterwards adapt to your model

```bash
/app/controllers/admin/model_name_controller.rb # model controller
/app/decorators/model_name_decorator.rb # model decorator
/app/views/admin/_form.html.erb # model form
```

All the remaining views/controllers logic will be defaulted to this engine files. To override them just create them on your local repo and you're good to go.

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/kollegorna/k-admin.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
