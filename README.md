# Peek::DelayedJob

Take a peek into the current state of your DelayedJob queues and workers.

Things this peek view provides:

- The total number of queued jobs<!-- for each queue -->.
- The total number of failed jobs.

## Installation

Add this line to your application's Gemfile:

    gem 'peek-delayed_job'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install peek-delayed_job

## Usage

Add the following to your `config/initializers/peek.rb`:

```ruby
Peek.into Peek::Views::DelayedJob
```

and the following to `app/assets/javascripts/application.js` (or whatever file contains `require peek`):

```javascript
//= require peek/views/delayed_job
```

<!--
By default, it will track all queues. If you'd like to limit the number of queues
it displays, you can pass in the `:queues` option:

```ruby
Peek.into Peek::Views::DelayedJob, :queues => ['notifications', 'backups']
```
-->
