# Command::Dispatcher

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'command-dispatcher'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install command-dispatcher

## Usage

Assume you are writting a cli gem with multiple commands.

With CommandDispatcher you would create a first cli script and add the 
following code to it:

`mygemscript`
    $scriptPath = File.expand_path(File.dirname(__FILE__))
    $scriptName = File.basename(__FILE__)
    $command = ARGV.shift
    dispatcher = CommandDispatcher::Dispatcher.new( $scriptPath, $scriptName )

    begin
        dispatcher.dispatchCommand($command, *ARGV)
    rescue ArgumentError => ex
        $stderr.puts "Error: " + ex.to_s + ".  Please specify a valid command."
        dispatcher.usage
        exit -1
    ensure
    end

Then for each command, you would create a specific ruby script file name like:
`mygemscript-commanda`
`mygemscript-commandb`
`mygemscript-commandc`

Such that when invoking `mygemscript commanda` would resolve in calling `mygemscript-commanda`

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
