# your code goes here
require 'pry'

class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene 
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end


    # def bank_account=(bank_account)
    #     @bank_account = bank_account
    # end


    # def happiness=(happiness)
    #     @happiness = happiness
    # end

    def happiness=(new_happiness)
        @happiness = 
        if new_happiness < 0
            0
        elsif new_happiness > 10
            10
        else
            new_happiness
        end
    end

    def hygiene=(new_hygiene)
        @hygiene = 
        if new_hygiene < 0
            0
        elsif new_hygiene > 10
            10
        else
            new_hygiene
        end
    end

    def clean?
        self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def get_paid(amount)
        @bank_account +=  amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?" 
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end
    end
            


end

# binding.pry

