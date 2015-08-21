# Peek::DelayedJob

Take a peek into the current state of your DelayedJob queue.

Things this peek view provides:

- The total number of queued jobs.
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
