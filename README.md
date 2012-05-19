## Installation

Installing the gem is fairly easy. In your `Gemfile`:

```ruby
gem "mi_hermano"
```

## Usage

To use Mi Hermano, you’ll have to create an empty Google Spreadsheet and use its *key* (found in its URL) when calling `setup`:

```ruby
MiHermano.setup({
  :username => "me@gmail.com",
  :password => "my_secret_password",
  :spreadsheet_key => "nxBFQGKpnzObbVyyIkGtajktMFAhDRGFiEdM66Vacmjz",
})
```

After that, you can use `translate` to translate strings:

```ruby
MiHermano.translate("Hello, my friends!", :en, :fr) # => "Bonjour, mes amis!"
```

## Options

You can define a default source language and a default target language when initializing Mi Hermano. These settings will be used if you do not specify a source or a target when calling `translate`.

```ruby
MiHermano.setup({
  :username => "me@gmail.com",
  :password => "my_secret_password",
  :spreadsheet_key => "nxBFQGKpnzObbVyyIkGtajktMFAhDRGFiEdM66Vacmjz",
  :default_source => :en,
  :default_target => :es
})

MiHermano.translate("Hello, my friends!") # => "Hola, mis amigos!"
```

## Known issues

Since we rely on a Google Spreadsheet function, translating a string is slow. It’s recommended that you use it background jobs.

## License

Mi Hermano is © 2012 [Rémi Prévost](http://exomel.com) and may be freely distributed under the [MIT license](https://github.com/remiprev/mi_hermano/blob/master/LICENSE). See the `LICENSE` file.
