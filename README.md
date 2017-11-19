# Slideshow

A Ruby-wrapper for the `remarkjs` library - presents a local markdown file as a slideshow in your browser!

## Installation

Install it yourself as:

    $ gem install slideshow-md

## Usage

To use, simply just run `slideshow-md start [slideshow name]`. This gem expects a slideshow file in the current directory formatted via `markdown` file format. 
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

Fork the repo and create a branch that contains your changes. Make a PR against the master branch here and it'll be merged in if accepted!

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/achengscode/slideshow.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
