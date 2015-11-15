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

3. Add the following to `config/initializers/peek.rb`:

    ```ruby
    Peek.into Peek::Views::DelayedJob
    ```

## Configuration

In some cases instead of using the default 'delayed::job' label, you would like
to use a different label (such as 'DJ'). To achieve this, you can provide it as
an argument within the initialiser - like so:

```ruby
Peek.into Peek::Views::DelayedJob, :label => 'DJ'
```
