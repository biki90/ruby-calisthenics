class RockPaperScissors
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    
    if player1[1] !~ /[RPS]/i || player2[1] !~ /[RPS]/i
        raise NoSuchStrategyError, "Strategy must be one of R,P,S"
    end
    
     winHash = {"RR" => 1, "RS" => 1, "PR" => 2,"SR" => 2, "SS" => 1, "SP" => 1,"PR" => 1, "PS" => 2, "PP" => 1}

    return (winHash["#{player1[1].upcase}#{player2[1].upcase}"] == 1? player1 : player2)


  end

  def self.tournament_winner(tournament)

    if !(tournament[0].is_a?(Array))
		    return tournament
	  else
		    return self.winner(self.tournament_winner(tournament[0]), self.tournament_winner(tournament[1]))
    
    end
    
  end
  
end

