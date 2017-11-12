#!/usr/bin/env ruby
require 'cats'
class MakeGo
  def self.run
    a = Cats::Meow.new(1)
    b = Cats::Meows.new(1)

    case
      when ENV['ALLCATS'] == 'yes'
        # ALLCATS=yes prints both, irrespective of BRANCH value
        a.say
        b.say
      when ENV['BRANCH'] == 'master'
        # BRANCH=master prints happycat
        a.say
      when ENV.has_key?('BRANCH')
        # BRANCH defined but not master prints njancat
        b.say
    end
  end
end

if __FILE__ == $0
  MakeGo.run
end
