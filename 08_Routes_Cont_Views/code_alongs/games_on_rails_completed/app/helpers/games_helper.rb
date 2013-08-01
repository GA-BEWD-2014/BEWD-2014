module GamesHelper
  def game_state(count, singular_state)
    if count == 1
      singular_state
    else
      'are'
    end
  end
end
