# Capistrano::Send

This gem provides some notifiers to send notifications after a deploy with Capistrano.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-send'
```

And then execute:

    $ bundle

## Usage

Add this line to your `Capfile` to use all notifiers:
```ruby
require 'capistrano/send/all'
```

### Email

The `mail` notifier sends an email with some useful informations about the release.

Add this line to your `Capfile`:
```ruby
require 'capistrano/send/mail'
```

You must configure the `From` and `To` fields and can configure the delivery method in your `config/deploy.rb`:
```ruby
set :send_mail, to: 'to@example.org', from: 'from@example.org',
  via: :smtp, via_options: {address: 'smtp.example.org'}
```
This notifier uses the [mail](https://github.com/mikel/mail) gem to send emails. Read its documentation for more delivery methods.

### Libnotify

The `libnotify` notifier uses `libnotify` to display a notification on your computer.

To use it, add the [libnotify](https://rubygems.org/gems/libnotify) gem to your Gemfile:
```ruby
gem 'libnotify'
```

Then add this line to your `Capfile`:
```ruby
require 'capistrano/send/libnotify'
```

### Notify-send

The `notify-send` notifier displays a notification on your computer like `libnotify`
but does not require the dependency and uses the `notify-send` binary.

Add this line to your `Capfile`:
```ruby
require 'capistrano/send/notify-send'
```
