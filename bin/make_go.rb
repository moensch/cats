#!/usr/bin/env ruby
require 'cats'
class MakeGo
  def self.run
    a = Cats::Meow.new
    b = Cats::Meows.new
    a.say if a.to_boolean(ENV['ALLCATS'])
    b.say if b.to_boolean(ENV['ALLCATS'])
  end
end

MakeGo.run
