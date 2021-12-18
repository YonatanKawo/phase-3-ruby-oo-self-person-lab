
class Person
    attr_accessor :name, :bank_account, :happiness, :hygiene

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness 
    @happiness.clamp(0,10)
    end

    def hygiene
    @hygiene.clamp(0,10)
    end
    
    def clean?
        @hygiene > 7? true:false
    end

    def happy?
        @happiness > 7? true:false
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        self.happiness += 2
        self.hygiene -=3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        # if topic == "politics"
        #     self.happiness -= 2
        #     person.happiness -= 2
        #     "blah blah partisan blah lobbyist"
        #     elsif topic == "weather"
        #         self.happiness += 1
        #         person.happiness += 1
        #         "blah blah sun blah rain"
        #         elsif (topic !== "politics") && (topic !== "weather")
        #             "blah blah blah blah blah"
        #         end
        #     end
        # end

        case topic
        when "politic"
            #new_happiness(friend, "-", 2)
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            #new_happiness(friend, "+", 1)
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
yonatan = Person.new("Yonatan")
