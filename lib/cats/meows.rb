require_relative './basemeow'
module Cats
  class Meows < Basemeow
    def initialize (times = 10)
      super(times, '~=[,,_,,]:3')
    end
  end
end
