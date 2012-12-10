# lib/terminal.rb

require 'oyster'

class Terminal
  BIN_SPEC = Oyster.spec do
    string :command
  end

  def initialize(argv, io)
    @options = BIN_SPEC.parse(argv)
    @stdout  = io
  end
end