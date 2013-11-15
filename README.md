# Simple::Mdb

Based on https://github.com/automatthew/activemdb gem
just improved for my own reasons

## Installation

Add this line to your application's Gemfile:

    gem 'simple-mdb'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple-mdb

## Usage

class MdbBase < SimpleMdb::Base
 set_mdb_file 'tmp/test.mdb'
 set_table_name 'Prices'
end

MdbBase.find_all(:column=>value)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
