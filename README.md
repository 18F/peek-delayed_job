# Peek::DelayedJob

Take a peek into the current state of your [Delayed::Job](https://github.com/collectiveidea/delayed_job) queue – see the [peek](https://github.com/peek/peek) project for general information.

![screenshot](screenshot.png)

Only supports the DelayedJob ActiveRecord backend at the moment.

## Installation

1. Add this line to your application's Gemfile:

    ```ruby
    gem 'peek-delayed_job'
    ```

1. Run

        $ bundle

1. Add the following to `config/initializers/peek.rb`:

    ```ruby
    Peek.into Peek::Views::DelayedJob
    ```
