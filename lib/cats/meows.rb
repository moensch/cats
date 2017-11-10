module Cats
  class Meows
    def initialize
      @times = 10
      @meow = '~=[,,_,,]:3'
    end

    def to_boolean(val)
      if val && val =~ /^(true|t|yes|y|1)$/i
        true
      else
        false
      end
    end

    def say
      puts @meow * @times
    end
  end
end
