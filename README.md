# Capistrano::ConfigExamples

Capistrano tasks for uploading example files for `linked_files` to your shared folder.

The gem works only with Capistrano 3!

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-config-examples'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-config-examples

## Usage

Add to your Capfile:

    require 'capistrano/config_examples'

Run the following task to copy examples to the shared folder for your configured `linked_files`.

    cap <environment> config

## Contributing

1. Fork it ( http://github.com/jbslabs/capistrano-config-examples/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
