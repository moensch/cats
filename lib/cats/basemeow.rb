module Cats
  class Basemeow
    attr_accessor :times
    def initialize (times, meow)
      @times = times
      @meow = meow
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
