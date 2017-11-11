require_relative './basemeow'
module Cats
  class Meow < Basemeow
    def initialize (times = 40)
      super(times, '(=^ェ^=)')
    end

    def whiskers
      puts 'door too wide' if @times < 90
    end
  end
end
