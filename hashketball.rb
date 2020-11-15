require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


def num_points_scored(player_name)

  points_scored = []
  
#   game_hash[:home][:players].map do |player|
#     points_scored << player
#   end

  game_hash[:home][:players].map { |player| points_scored << player }
  game_hash[:away][:players].map { |player| points_scored << player }
    
  player_info = points_scored.select { |player| player[:player_name] == player_name }

#   puts player_info[0][:points]

  return player_info[0][:points]

end

#shoe size

def shoe_size(player_name)

  shoe_sizes = []
  
  game_hash[:home][:players].map { |player| shoe_sizes << player }
  game_hash[:away][:players].map { |player| shoe_sizes << player }
    
  player_info = shoe_sizes.select { |player| player[:player_name] == player_name }

  return player_info[0][:shoe]

end

def team_colors(team_name)

  correct_colors = []

  correct_colors << game_hash[:home]
  correct_colors << game_hash[:away]

  # game_hash[:home].map {|team| correct_colors << team[:colors]}
  # game_hash[:away].map {|team| correct_colors << team[:colors]}

  team_color_info = correct_colors.select { |team| team[:team_name] == team_name}


return team_color_info[0][:colors]

end

def team_names
  team_names =[]

  game_hash.map {|team| team_names << team[1][:team_name] }

  return team_names

end



def player_numbers(team_name)
  # players = game_hash.map {|team| team[1][:players] }

  jersey_numbers = []
  
  if team_name == "Brooklyn Nets"
      game_hash[:home][:players].map {|player| jersey_numbers << player[:number]}
  elsif team_name == "Charlotte Hornets"
      game_hash[:away][:players].map {|player| jersey_numbers << player[:number]}
  end

  return jersey_numbers

end

def player_stats(player_name)
  players = []
  
  game_hash[:home][:players].map { |player| players << player }
  game_hash[:away][:players].map { |player| players << player }
    
  player_stats = players.select { |player| player[:player_name] == player_name }

return player_stats[0].to_h

end
#player_stats("Alan Anderson")

def big_shoe_rebounds

  players = []

  game_hash[:home][:players].map { |player| players << player }
  game_hash[:away][:players].map { |player| players << player }

  big_shoe = 0
  rebound = 0

  for i in players do
      if i[:shoe] > big_shoe
          big_shoe = i[:shoe]
          rebound = i[:rebounds]
      end
  end

  return rebound
end