# Slideshow

A Ruby-wrapper for the `remarkjs` library - presents a local markdown file as a slideshow in your browser!

## Installation

Install it yourself as:

    $ gem install slideshow-md

## Usage

To use, simply just run `slideshow-md [slideshow name]`. This gem expects a slideshow file in the current directory formatted via `markdown` file format. 
Currently we only support a single Markdown file containing the entire slideshow.

An example slideshow is below:

```
# Title

---

# Agenda

1. Introduction
2. Deep-dive
3. ...

---

# Introduction
```

After starting the application, go to `localhost:4567` and your slideshow will be present in your browser!

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/achengscode/slideshow.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
