# Testing Rails with Capybara, RSpec, Factory Bot, Faker and Shoulda Matchers

- [Installation](#installation)
- [Usage](#usage)
    - [RSpec](#rspec)
    - [Faker](#faker)
- [Matchers and Methods](#matchers-and-methods)
    - [ActiveSupport::TestCase](#activesupporttestcase)
    - [RSpec Matchers (for Ruby)](#rspec-matchers-for-ruby)
    - [RSpec Matchers (for Rails)](#rspec-matchers-for-rails)
    - [Shoulda Matchers](#shoulda-matchers)
    - [Capybara](#capybara)
    - [Factory Bot](#factory-bot)
    - [Other](#other)
- [Types of Specs](#types-of-specs)
    - [Channel Specs](#channel-specs)
    - [Controller Specs](#controller-specs)
    - [Feature Specs](#feature-specs)
    - [Generator Specs](#generator-specs)
    - [Helper Specs](#helper-specs)
    - [Integration Specs](#integration-specs)
    - [Job Specs](#job-specs)
    - [Mailbox Specs](#mailbox-specs)
    - [Mailer Specs](#mailer-specs)
    - [Model Specs](#model-specs)
    - [Request Specs](#request-specs)
    - [Routing Specs](#routing-specs)
    - [Scaffold Specs](#scaffold-specs)
    - [System Specs](#system-specs)
    - [View Specs](#view-specs)
- [FAQs](#faqs)
- [See Also](#see-also)
    - [GitHub Repositories](#github-repositories)
    - [References](#references)

## Installation

1. Update the Gemfile as outlined in this repository

1. Install the newly added gems

    ```
    bundle install
    ```

1. Install RSpec

    ```
    rails generate rspec:install
    ```

4. Update the following files as outlined in this repository:
  
    ```
    spec/support/factory_bot.rb
    spec/support/shoulda_matchers.rb
    spec/rails_helper.rb
    spec/spec_helper.rb
    .rspec
    ```

## Usage

### RSpec

[RSpec Usage](https://github.com/faker-ruby/faker#generators)

```
rails generate GENERATOR [args] [options]

bundle exec rspec
bundle exec rspec spec/models
bundle exec rspec spec/models/post_spec.rb
bundle exec rspec spec/models/post_spec.rb:8
```

### Faker

[Fake Generators](https://github.com/faker-ruby/faker#generators)

```ruby
Faker::Name.name
Faker::Internet.unique.email
```

## Matchers and Methods

### ActiveSupport::TestCase

```ruby
cookies
flash
session

@controller.action_name
@request.media_type
@response.body
```

#### assert / assert_not

- asserts that `test` is true

#### assert_broadcast_on

#### assert_changes / assert_no_changes

- asserts that the result of evaluating an expression is changed after invoking the passed in block

#### assert_difference / assert_no_difference

#### assert_dom_equal

#### assert_emails

#### assert_empty / assert_not_empty

- asserts that `obj.empty?` is true

#### assert_enqueued_jobs / assert_no_enqueued_jobs

#### assert_enqueued_with

#### assert_equal / assert_not_equal

- asserts that `expected == actual` is true

```ruby
assert_equal body, @response.body
assert_equal media_type, @response.media_type
```

#### assert_generates

- asserts that the provided options can be used to generate the provided path

#### assert_has_stream / assert_has_stream_for

#### assert_in_delta / assert_not_in_delta

#### assert_in_epsilon / assert_not_in_epsilon

#### assert_includes / assert_not_includes

- asserts that `collection.include?(obj)` is true

#### assert_instance_of / assert_not_instance_of

- asserts that `obj.instance_of? Object` is true

#### assert_kind_of / assert_not_kind_of

- asserts that `obj.kind_of? Object` is true

#### assert_match / assert_no_match

- asserts that `string =~ pattern` is true

#### assert_nil / assert_not_nil

- asserts that `obj.nil?` is true

#### assert_nothing_raised

- asserts that the given block doesn't raise any exceptions

#### assert_operator / assert_not_operator

- asserts that `obj1.operator(obj2)` is true

#### assert_performed_jobs / assert_no_performed_jobs

#### assert_performed_with

#### assert_predicate / assert_not_predicate

- asserts that `obj.predicate?` is true

```ruby
assert_predicate string, :empty?
```

#### assert_raises

- asserts that the given block raises one of the given exceptions

#### assert_recognizes

- asserts that the routing of the given path was handled correctly and that the parsed options ... match path

#### assert_redirected_to

- asserts that the redirection options passed in match those of the redirect called in the latest action

```ruby
assert_redirected_to url
```

#### assert_reject_connection

#### assert_respond_to / assert_not_respond_to

- asserts that `obj.respond_to?(:symbol)` is true

#### assert_response

- asserts that the response comes with a specific status code

```ruby
assert_response :success
assert_response :redirect
```

#### assert_same / assert_not_same

- asserts that `expected.equal?(actual)` is true

#### assert_select

#### assert_select_email

#### assert_select_encoded

#### assert_selector

#### assert_text

#### assert_throws

- asserts that the given block throws the symbol

#### connect

#### css_select

#### flunk

- asserts failure (e.g. for pending tests)

#### perform_enqueued_jobs

#### stub_connection

#### subscribe

### RSpec Matchers (for Ruby)

[RSpec Built-in Matchers](https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers)

#### be

- passes if `actual.equal?(expected)`

```ruby
expect(actual).to be true
expect(actual).to be false
expect(actual).to be > expected
expect(actual).to be >= expected
expect(actual).to be < expected
expect(actual).to be <= expected
```

#### be_between

#### be_empty

#### be_falsey

#### be_instance_of

#### be_kind_of

#### be_nil

#### be_truthy

#### be_within

#### change

```ruby
expect { a += 1 }.to change { a }.by 1
expect { a += 3 }.to change { a }.from 2
expect { a += 3 }.to change { a }.by_at_least 2
```

#### cover

```ruby
expect(1..10).to cover 3
```

#### eq

- passes if `actual == expected`

#### eql

- passes if `actual.eql?(expected)`

#### equal

- passes if `actual.equal?(expected)`

#### exist

#### have_key

#### include

```ruby
expect([1, 2, 3]).to include 1, 2
expect(a: 'b').to include a: 'b'
expect('string').to include 'str'
expect([1, 2, 3]).to match_array([3, 2, 1])
```

#### match

#### match_array / contain_exactly

#### output

```ruby
expect { actual }.to output(string).to_stdout
expect { actual }.to output(string).to_stderr
```

#### raise_error

#### respond_to

#### satisfy

#### start_with / end_with

#### throw_symbol

#### yield_control

#### yield_successive_args

#### yield_with_args / yield_with_no_args

### RSpec Matchers (for Rails)

[RSpec Rails Matchers](https://relishapp.com/rspec/rspec-rails/v/4-0/docs/matchers)

#### be_a_new

[Documentation](https://relishapp.com/rspec/rspec-rails/v/4-0/docs/matchers/be-a-new-matcher)

- accepts a class and passes if the subject is an instance of that class that returns false to `#persisted?`

```ruby
expect(assigns(:post)).to be_a_new(Post).with(attributes)
```

#### broadcast_to / have_broadcasted_to

[Documentation](https://relishapp.com/rspec/rspec-rails/v/4-0/docs/matchers/have-broadcasted-matcher)

- used to check if a message has been broadcasted to a given stream

```ruby
expect { ActionCable.server.broadcast channel, text: text }.to broadcast_to(channel).with(text: text)
```

#### enqueue_job / have_enqueued_job

[Documentation](https://relishapp.com/rspec/rspec-rails/v/4-0/docs/matchers/have-enqueued-job-matcher)

- used to check if given `ActiveJob` job was enqueued

```ruby
expect { MyJob.perform_later }.to enqueue_job(MyJob).on_queue(queue).at(time).with(arguments)
```

#### enqueue_mail / have_enqueued_mail

[Documentation](https://relishapp.com/rspec/rspec-rails/v/4-0/docs/matchers/have-enqueued-mail-matcher)

- used to check if given mailer was enqueued

```ruby
expect { MyMailer.my_method.deliver_later }.to enqueue_mail(MyMailer, :my_method).at(time)
```

#### have_been_enqueued

[Documentation](https://relishapp.com/rspec/rspec-rails/v/4-0/docs/matchers/have-been-enqueued-matcher)

- used to check if given `ActiveJob` job was enqueued

```ruby
expect(MyJob).to have_been_enqueued.on_queue(queue).at(time).with(arguments)
```

#### have_been_performed

[Documentation](https://relishapp.com/rspec/rspec-rails/v/4-0/docs/matchers/have-been-performed-matcher)

- used to check if given `ActiveJob` job was performed

```ruby
expect(MyJob).to have_been_performed.on_queue(queue).at(time).with(arguments)
```

#### have_http_status

[Documentation](https://relishapp.com/rspec/rspec-rails/v/4-0/docs/matchers/have-http-status-matcher)

- used to specify that a response returns a desired status code (e.g. `200`, `:ok`, `:success`)
- available in controller, feature and request specs

```ruby
expect(response).to have_http_status 200
```

#### have_stream_from / have_streams / have_no_streams

[Documentation](https://relishapp.com/rspec/rspec-rails/v/4-0/docs/matchers/have-stream-from-matcher)

- used to check if a channel has been subscribed to a given stream specified as a `String`
- if you use `stream_for` in you channel to subscribe to a model, use `have_stream_for` matcher instead
- available in channel specs

```ruby
expect(subscription).to have_stream_from stream
expect(subscription).to_not have_streams
expect(subscription).to have_no_streams
```

#### match_array

[Documentation](https://relishapp.com/rspec/rspec-rails/v/4-0/docs/matchers/activerecord-relation-match-array)

- will pass if the scope would return all of the elements specified in the array on the right hand side

```ruby
expect(Post.all).to match_array posts
```

#### perform_job / have_performed_job

[Documentation](https://relishapp.com/rspec/rspec-rails/v/4-0/docs/matchers/have-performed-job-matcher)

- used to check if given `ActiveJob` job was performed

```ruby
expect { MyJob.perform_later }.to perform_job(MyJob).on_queue(queue).at(time).with(arguments)
```

#### redirect_to

[Documentation](https://relishapp.com/rspec/rspec-rails/v/4-0/docs/matchers/redirect-to-matcher)

- used to specify that a request redirects to a given template or action
- available in controller and request specs
- delegates to `assert_redirected_to`

```ruby
expect(response).to redirect_to url
```

#### render_template

[Documentation](https://relishapp.com/rspec/rspec-rails/v/4-0/docs/matchers/render-template-matcher)

- used to specify that a request renders a given template or layout
- available in controller and request specs
- delegates to `assert_template`

```ruby
expect(response).to render_template template_name
```

### Shoulda Matchers

- [Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers#matchers)

Shoulda Matchers are useful for testing Active Record [associations](https://guides.rubyonrails.org/association_basics.html) and [validations](https://guides.rubyonrails.org/active_record_validations.html), as well as some Action Controller and Dispatch methods.

#### Common Qualifiers

- `.allow_blank # allow_blank: true`
- `.allow_nil # allow_nil: true`
- `.on(:create) # on: :create`
- `.with_high_message(message)`
- `.with_long_message(message) # too_long: message`
- `.with_low_message(message)`
- `.with_message(message) # message: message`
- `.with_short_message(message) # too_short: message`

#### accept_nested_attributes_for

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveRecord.html#accept_nested_attributes_for-instance_method)

-  tests usage of the `accepts_nested_attributes_for` macro

#### allow_value / allow_values

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveModel.html#allow_value-instance_method)

- tests that an attribute is valid or invalid if set to one or more values

```ruby
# Code
validates_format_of :website_url, with: URI.regexp

# Assertion
it { is_expected.to allow_value('http://example.com').for(:website_url) }
it { is_expected.to allow_values('http://example.com', 'http://google.com').for(:website_url) }
```

#### belong_to

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveRecord.html#belong_to-instance_method)

- tests your `belongs_to` associations

#### define_enum_for

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveRecord.html#define_enum_for-instance_method)

- tests usage of the `enum` macro

#### delegate_method

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/Independent.html#delegate_method-instance_method)

- tests that an object forwards messages to other, internal objects by way of delegation

#### filter_param

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActionController.html#filter_param-instance_method)

- tests parameter filtering configuration

#### have_and_belong_to_many

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveRecord.html#have_and_belong_to_many-instance_method)

- tests your `has_and_belongs_to_many` associations

#### have_db_column

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveRecord.html#have_db_column-instance_method)

- tests that the table that backs your model has a specific column

#### have_db_index

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveRecord.html#have_db_index-instance_method)

- tests that the table that backs your model has an index on a specific column

#### have_many

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveRecord.html#have_many-instance_method)

- tests your `has_many` associations

#### have_one

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveRecord.html#have_one-instance_method)

- tests your `has_one` associations

#### have_readonly_attribute

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveRecord.html#have_readonly_attribute-instance_method)

- tests usage of the `attr_readonly` macro

#### have_rich_text

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveRecord.html#have_rich_text-instance_method)

- tests your `has_rich_text` associations

#### have_secure_password

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveModel.html#have_secure_password-instance_method)

- tests usage of `has_secure_password`

#### permit

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActionController.html#permit-instance_method)

- tests that an action places a restriction on the `params` hash

#### redirect_to

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActionController.html#redirect_to-instance_method)

- tests that an action redirects to a certain location

#### render_template

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActionController.html#render_template-instance_method)

- tests that an action renders a template

#### render_with_layout

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActionController.html#render_with_layout-instance_method)

- tests that an action is rendered with a certain layout

#### rescue_from

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActionController.html#rescue_from-instance_method)

- tests usage of the `rescue_from` macro

#### respond_with

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActionController.html#respond_with-instance_method)

- tests that an action responds with a certain status code

#### route

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActionController.html#route-instance_method)

- tests your routes

#### serialize

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveRecord.html#serialize-instance_method)

- tests usage of the `serialize` macro

#### set_flash

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActionController.html#set_flash-instance_method)

- makes assertions on the `flash` hash

#### set_session

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActionController.html#set_session-instance_method)

- makes assertions on the `session` hash

#### use_after_action

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActionController.html#use_after_action-instance_method)

- tests that an `after_action` callback is defined in your controller

#### user_around_action

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActionController.html#use_around_action-instance_method)

- tests that an `around_action` callback is defined in your controller

#### use_before_action

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActionController.html#use_before_action-instance_method)

- tests that a `before_action` callback is defined in your controller

#### validate_absence_of

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveModel.html#validate_absence_of-instance_method)

- tests usage of `validates_absence_of`

#### validate_acceptance_of

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveModel.html#validate_acceptance_of-instance_method)

- tests usage of `validates_acceptance_of`

#### validate_confirmation_of

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveModel.html#validate_confirmation_of-instance_method)

- tests usage of `validates_confirmation_of`

#### validate_exclusion_of

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveModel.html#validate_exclusion_of-instance_method)

- tests usage of `validates_exclusion_of`

#### validate_inclusion_of

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveModel.html#validate_inclusion_of-instance_method)

- tests usage of `validates_inclusion_of`

```ruby
# Code
validates_inclusion_of :state, in: %w[published unpublished]
validates_inclusion_of :age, in: 20..30

# Assertion
it { is_expected.to validate_inclusion_of(:state).in_array(states) }
it { is_expected.to validate_inclusion_of(:state).in_range(ages) }
```

#### validate_length_of

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveModel.html#validate_length_of-instance_method)

- tests usage of `validates_length_of`

```ruby
# Code
validates_length_of :password, minimum: 10, maximum: 20 # in: 10..20
validates_length_of :password, is: 10

# Assertion
it { is_expected.to validate_length_of(:password).is_at_least(minimum).is_at_most(maximum) }
it { is_expected.to validate_length_of(:password).is_equal_to(length) }
```

#### validate_numericality_of

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveModel.html#validate_numericality_of-instance_method)

- tests usage of `validates_numericality_of`

#### validate_presence_of

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveModel.html#validate_presence_of-instance_method)

- tests usage of `validates_presence_of`

```ruby
# Code
validates_presence_of :title

# Assertion
it { is_expected.to validate_presence_of(:title) }
```

#### validate_uniqueness_of

[Documentation](http://matchers.shoulda.io/docs/v4.3.0/Shoulda/Matchers/ActiveRecord.html#validate_uniqueness_of-instance_method)

- tests usage of `validates_uniqueness_of`

### Capybara

[Capybara DSL](https://github.com/teamcapybara/capybara#the-dsl)

#### Actions

```ruby
# file input: <input type="file">
attach_file(id_or_name_or_label_text, path_to_file)

# checkbox: <input type="checkbox">
check(id_or_name_or_label_text)
uncheck(id_or_name_or_label_text)

# radio button: <input type="radio">
choose(id_or_name_or_label_text)

# button: <input type="{button,image,reset,submit}"> or <button>
click_button(id_or_name_or_title_or_value_or_content)

# link: <a href="...">
click_link(id_or_title_or_content)

# both buttons and links, alias: click_link_or_button
click_on(id_or_name_or_title_or_value_or_content)

# text: <input type="{email,password,text,...}">, <textarea>
fill_in(id_or_name_or_placeholder_or_label_text, with: value)

# select: <select>
select(value, from: id_or_name_or_label_text)
unselect(value, from: id_or_name_or_label_text)

# URLs
visit(url)
```

#### Finding

```ruby
all(selector, options)
ancestor(selector, options)
find(selector, options)
find_button(selector, options)
find_by_id(id, options)
find_field(selector, options)
find_link(selector, options)
first(selector, options)
sibling(selector, options)

el.text
el.value
```

#### Scoping

```ruby
within(selector) do
  # actions
end
```

#### Querying

```ruby
page.has_button?(button)
page.has_checked_field?(checked_field)
page.has_content?(content)
page.has_css?(css)
page.has_field?(field)
page.has_link?(link)
page.has_select?(select)
page.has_selector?(selector)
page.has_table?(table)
page.has_text?(text)
page.has_unchecked_field?(unchecked_field)
page.has_xpath?(xpath)
```

#### Matchers

```ruby
expect(page).to have_content(content)
expect(page).to have_css(css)
expect(page).to have_current_path(path)
expect(page).to have_selector(selector)
expect(page).to have_style(style)
expect(page).to have_text(text)
expect(page).to have_title(title)
expect(page).to have_xpath(xpath)
```

### Factory Bot

[Getting Started - Factory Bot](https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md)

#### Attributes Hash

```ruby
# single record
attributes_for :post

# multiple records
attributes_for_list :post, 3
```

#### Non-Persisted Record

```ruby
# single record
build :post

# override attributes
build :post, title: nil

# with trait
build :post, :invalid

# multiple records
build_list :post, 3
```

#### Persisted Record

```ruby
# single record
create :post

# override attributes
create :post, title: nil

# with trait
create :post, :invalid

# multiple records
create_list :post, 3

# with block
create :post do |post|
  post.comments.create attributes_for(:comment)
end
```

### Other

```ruby
follow_redirect!
```

## Types of Specs

### Channel Specs

[Channel specs documentation](https://relishapp.com/rspec/rspec-rails/v/4-0/docs/channel-specs/channel-spec)

```
rails generate rspec:channel NAME [options]
```

### Controller Specs

[Controller specs documentation](https://relishapp.com/rspec/rspec-rails/docs/controller-specs)

```
rails generate rspec:controller NAME [action action] [options]
```

> as of RSpec 3.5, both the Rails and RSpec teams discourage directly testing controllers in favor of functional tests like request specs

### Feature Specs

[Feature specs documentation](https://relishapp.com/rspec/rspec-rails/docs/feature-specs/feature-spec)

> the RSpec team now officially recommends system specs

```
rails generate rspec:feature NAME [options]
```

### Generator Specs

[Generator specs documentation](https://relishapp.com/rspec/rspec-rails/v/4-0/docs/generator-specs/generator-spec)

```
rails generate rspec:generator NAME [options]
```

### Helper Specs

[Helper specs documentation](https://relishapp.com/rspec/rspec-rails/docs/helper-specs/helper-spec)

```
rails generate rspec:helper NAME [options]
```

### Integration Specs

```
rails generate rspec:integration NAME [options]
```

### Job Specs

[Job specs documentation](https://relishapp.com/rspec/rspec-rails/docs/job-specs/job-spec)

```
rails generate rspec:job NAME [options]
```

### Mailbox Specs

[Mailbox specs documentation](https://relishapp.com/rspec/rspec-rails/v/4-0/docs/mailbox-specs/action-mailbox-spec)

```
rails generate rspec:mailbox NAME [options]
```

### Mailer Specs

[Mailer specs documentation](https://relishapp.com/rspec/rspec-rails/docs/mailer-specs)

```
rails generate rspec:mailer NAME [method method] [options]
```

### Model Specs

[Model specs documentation](https://relishapp.com/rspec/rspec-rails/docs/model-specs)

```
rails generate rspec:model NAME [field:type field:type] [options]
```

### Request Specs

[Request specs documentation](https://relishapp.com/rspec/rspec-rails/docs/request-specs/request-spec)

> Request specs are for testing the application from the perspective of a machine client. They begin with an HTTP request and end with the HTTP response, so they're faster than [system] specs, but do not examine your app's UI or JavaScript.

> When writing them, try to answer the question, “For a given HTTP request (verb + path + parameters), what HTTP response should the application return?”

```
rails generate rspec:request NAME [options]
```

```ruby
# Request types: get, post, patch, put, head, delete
```

### Routing Specs

[Routing specs documentation](https://relishapp.com/rspec/rspec-rails/docs/routing-specs)

**Note:** There is no generator for routing specs, but they can be generated using other generators (e.g. `rspec:scaffold`)

Routing specs simply test the application's routes by asserting that the specified URLs route to the specified controller actions. To get the specs to pass, add the appropriate routes to `config/routes.rb`.

> Simple apps with nothing but standard RESTful routes won't get much value from routing specs, but they can provide significant value when used to specify customized routes, like vanity links, slugs, etc.

> They are also valuable for routes that should not be available.

#### Example

See: `spec/routing/posts_routing_spec.rb`

```ruby
expect(get: '/posts').to route_to 'posts#index'
expect(get: '/blog').to route_to 'posts#index'
expect(get: '/not-a-valid-url').to_not be_routable
```

### Scaffold Specs

```
rails generate rspec:scaffold NAME [field:type field:type] [options]
```

### System Specs

[System specs documentation](https://relishapp.com/rspec/rspec-rails/docs/system-specs/system-spec)

> Also called **acceptance tests**, **browser tests**, or **end-to-end tests**, system specs test the application from the perspective of a *human client*. The test code walks through a user's browser interactions... and the expectations revolve around page content.

```
rails generate rspec:system NAME [options]
```

### View Specs

[View specs documentation](https://relishapp.com/rspec/rspec-rails/docs/view-specs/view-spec)

> Testing the response to your request by asserting the presence of key HTML elements and their content is a common way to test the views of your application.

> Use them to test the content of view templates without invoking a specific controller.

```
rails generate rspec:view NAME [action action] [options]
```

1. Use the `assign` method to set instance variables in the view
1. Use the `render` method to render the view
1. Set expectations against the resulting rendered template

## FAQs

- What's the difference between unit and system tests?

- Which tests should I start with: unit or system?

- Should I use feature specs?

- Don't controller, request and routing specs basically test the same thing?

- In model specs, should I test validations? If so, is there a difference between Shoulda Matchers and RSpec matchers?

- It seems that both RSpec Rails and Shoulda Matchers have matchers for things such as routing and template rendering. Which should I use?

## See Also

### GitHub Repositories
- [capybara](https://github.com/teamcapybara/capybara)
- [factory_bot](https://github.com/thoughtbot/factory_bot)
- [factory_bot_rails](https://github.com/thoughtbot/factory_bot_rails)
- [faker](https://github.com/faker-ruby/faker)
- [rspec](https://github.com/rspec/rspec)
- [rspec-rails](https://github.com/rspec/rspec-rails)
- [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)

### References
- [Testing Rails Applications - Ruby on Rails Guides](https://guides.rubyonrails.org/testing.html)
- [RSpec cheatsheet - devhints.io](https://devhints.io/rspec)
- [RSpec-rails cheatsheet - devhints.io](https://devhints.io/rspec-rails)
- [Factory Bot cheatsheet - devhints.io](https://devhints.io/factory_bot)
- [How We Test Rails Applications - Thoughtbot](https://thoughtbot.com/blog/how-we-test-rails-applications)
