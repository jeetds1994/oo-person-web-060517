# your code goes here
require 'pry'
class Person
  attr_reader :name
  attr_accessor :bank, :happiness, :hygiene


  def initialize(name)
    @name = name
    @bank = 25
    @happiness = 8
    @hygiene = 8
  end

  def bank_account=(amount)
    @bank = @bank + amount
  end

  def bank_account
    @bank
  end

  def happiness=(hap_level)
    if hap_level >= 0 && hap_level <= 10
      @happiness = hap_level
    elsif hap_level > 10
      @happiness = 10
    elsif hap_level < 0
      @happiness = 0
    end
  end

  def hygiene=(hyg_lvl)
    if hyg_lvl >= 0 && hyg_lvl <= 10
      @hygiene = hyg_lvl
    elsif hyg_lvl > 10
      @hygiene = 10
    elsif hyg_lvl < 0
      @hygiene = 0
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank += salary
    'all about the benjamins'
  end

  def take_bath
    self.hygiene=(@hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  def work_out
    self.hygiene=(@hygiene - 3)
    self.happiness=(@happiness + 2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(arg)
    self.happiness=(@happiness + 3)
    arg.happiness += 3
    "Hi #{arg.name}! It's #{self.name}. How are you?"
  end
  def start_conversation(person2talk2, topic)
    if topic == "politics"
      self.happiness=(self.happiness - 2)
      person2talk2.happiness = person2talk2.happiness - 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness=(self.happiness + 1)
      person2talk2.happiness = person2talk2.happiness + 1

      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'

    end

  end
end
