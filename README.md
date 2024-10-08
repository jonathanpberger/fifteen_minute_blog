🤖 Why use Testing Agent to TDD a Rails App?
=============================

Because there're lots of times when TDD'ing with a robot is better than the alternative! This is a fairly basic implementation; use the full Sublayer gem to tailor specific bots to your needs.

🤖🤖 Who uses Testing Agent?
=============================

Anyone who wants to kick the tires on using Sublayer to Test-Drive their Development ("TDD").

🤖🤖🤖 What exactly does it do?
=============================

Testing Agent is an example bot, written as a ruby gem, which takes failing tests and uses an LLM to write the feature code to make it pass.

🤖🤖🤖🤖 How
=============================

You write the failing test, the robot makes it pass! Here's how to get started:

### Setup
- `rails new fifteen_minute_blog`
- `export OPENAI_API_KEY=GET_YR_OWN_DAMN_API_KEY_AND_PASTE_IT_HERE`
- `echo "gem 'testing_agent'" >> Gemfile`
- `echo "gem 'rspec-rails'" >> Gemfile`
- `bundle install`
- `rails g scaffold BlogPost title:string body:string --test-framework=rspec`
- `rails db:migrate`

### TDD'ing with Testing Agent
- write a failing test on `spec/models/blog_post_spec.rb`, e.g. `it "should validate presence of title"`
- maybe run `rspec` to confirm it's failing
- now for the fun part:`testing_agent pair_on app/models/blog_post.rb spec/models/blog_post_spec.rb`
- ???
- profit!







🤖🤖🤖🤖🤖 Extras
=============================

