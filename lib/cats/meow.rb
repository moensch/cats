require_relative './basemeow'
module Cats
  class Meow < Basemeow
    def initialize
      super(40, '(=^ェ^=)')
    end

    def whiskers
      puts 'door too wide' if @times < 90
    end
  end
end
