class GameBoard
  def set_locations_cells locations
    @locations = locations
    @no_of_hits = 0
  end
  def check_yourself user_guess
    
    if @locations.include?(user_guess.to_i) 
      puts 'Hit'
      @locations.delete(user_guess.to_i)
      @no_of_hits += 1
    else
      puts 'Miss'
    end
    if @locations.count == 0
      puts 'End'
      'kill'
    else
      @no_of_hits
    end
  end
end
