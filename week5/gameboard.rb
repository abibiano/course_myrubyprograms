class GameBoard
  def set_locations_cells locations
    @locations = locations
  end
  def check_yourself user_guess
    
    if @locations.include?(user_guess.to_i) 
      puts 'Hit'
      @locations.delete(user_guess.to_i)
    else
      puts 'Miss'
    end
    @locations.count == 0 ? 'kill' : nil
  end
end
