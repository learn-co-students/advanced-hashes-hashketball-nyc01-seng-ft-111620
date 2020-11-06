# Write your code below game_hash
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

# Write code here
require 'pry'
def num_points_scored (players_name)
  home_players_array = game_hash[:home][:players]
  away_players_array = game_hash[:away][:players]
  combined_array = home_players_array.concat(away_players_array)
  player_match = combined_array.find do |player_hash|
      players_name == player_hash[:player_name]
  end
  player_match[:points]
end

def shoe_size (players_name)
  home_players_array = game_hash[:home][:players]
  away_players_array = game_hash[:away][:players]
  combined_array = home_players_array.concat(away_players_array)
  player_match = combined_array.find do |player_hash|
      players_name == player_hash[:player_name]
  end
  player_match[:shoe]
end

def team_colors (team_name)
  if game_hash[:home][:team_name] == team_name
    game_hash[:home][:colors]
  else
    game_hash[:away][:colors]
  end
end

def team_names
  home_team = game_hash[:home][:team_name]
  away_team = game_hash[:away][:team_name]
  team_array = [home_team, away_team]
  team_array
end

def player_numbers (team_name)
  if team_name == game_hash[:home][:team_name]
    players_array = game_hash[:home][:players]
  elsif team_name == game_hash[:away][:team_name]
    players_array = game_hash[:away][:players]
  end
    players_array.map do |player_hash|
      player_hash[:number]
  end
end


def player_stats (players_name)
  home_players_array = game_hash[:home][:players]
  away_players_array = game_hash[:away][:players]
  combined_array = home_players_array.concat(away_players_array)
  combined_array.find do |player_hash|
      players_name == player_hash[:player_name]
  end
end

def big_shoe_rebounds
  home_players_array = game_hash[:home][:players]
  away_players_array = game_hash[:away][:players]
  combined_array = home_players_array.concat(away_players_array)
  largest_shoe_player_hash = combined_array.max_by do |player_hash|
      player_hash[:shoe]
  end
  largest_shoe_player_hash[:rebounds]
end