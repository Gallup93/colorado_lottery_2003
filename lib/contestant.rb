class Contestant
  attr_reader :full_name, :age, :state_of_residence, :spending_money, :game_interests
  def initialize(info)
    @full_name = info[:first_name] + " " + info[:last_name]
    @age = info[:age]
    @state_of_residence = info[:state_of_residence]
    @spending_money = info[:spending_money]
    @out_of_state = out_of_state?
    @game_interests = []
  end

  def out_of_state?
    if @state_of_residence == "CO"
      false
    else
      true
    end
  end

  def add_game_interest(game)
    @game_interests << game
  end
end
