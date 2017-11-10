require 'mocha'
module Cats
  class Meow
    def initialize
      @times = 40
      @meow = '(=^ェ^=)'
    end

    def to_boolean(val)
      if val && val =~ /^(true|t|yes|y|1)$/i
        true
      else
        false
      end
    end

    def whiskers
      puts 'door too wide' if @times < 90
    end

    def say
      puts @meow * @times
    end
  end
end
