#!/usr/bin/env ruby
require 'cats'
class MakeGo
  def self.run
    a = Cats::Meow.new(1)
    b = Cats::Meows.new(1)
    case
      when ENV['ALLCATS'] == 'yes'
        a.say
        b.say
      when ENV['BRANCH'] == 'master'
        a.say
      else
        b.say
    end
  end
end

if __FILE__ == $0
  MakeGo.run
end
