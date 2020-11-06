# Write your code below game_hash
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

# Write code here


# def num_points_scored(player)
#   game_hash.each do |team, team_data|
#     team_data.each do |team_stats, nested_data|
#       if team_stats == :players
#         nested_data.each do |athlete|
#         if athlete[:player_name] == player
#           return athlete[:points]
#         end
#         end
#       end
#     end
#   end
# end


# def shoe_size(player)
#   game_hash.each do |team, team_data|
#       team_data.each do |team_stats, nested_data|
#         if team_stats == :players
#           nested_data.each do |athlete|
#           if athlete[:player_name] == player
#             return athlete[:shoe]
#           end
#           end
#         end
#       end
#     end
# end


# def team_colors(team_name)
#   game_hash.each do |team, team_data|
#     if game_hash[:home][:team_name] == team_name
#       return game_hash[:home][:colors]
#     else
#       return game_hash[:away][:colors]
#     end
#   end
# end


# def team_names
#   result = []
#   game_hash.each do |team, stats|
#     result.push(stats[:team_name])
#   end
#   result
# end


# def player_numbers(rival_teams)
#   result = []
#   game_hash.each do |team, team_data|
#     if team_data[:team_name] == rival_teams
#       team_data[:players].each do |player|
#         result.push(player[:number])
#       end
#     end
#   end
#   return result
# end


# def player_stats(player_name)
#   game_hash.each do |team, team_data|
#     team_data[:players].each do |player|
#       if player[:player_name] == player_name
#         return player
#       end
#     end
#   end
# end


# def big_shoe_rebounds
#   #find largest shoe size in game_hash and save it to player_with_biggest_shoe
#   player_with_biggest_shoe = 0
#   game_hash.each do |team, team_data|
#     team_data[:players].each do |player|
#     if player[:shoe] > player_with_biggest_shoe
#       player_with_biggest_shoe = player[:shoe]
#       end
#     end
#   end
#   # declare nil result object. Then, update result with the player hash that matches the biggest shoe size
#   result = nil 
#   game_hash.each do |team1, team_data1|
#     team_data1[:players].each do |player1|
#       if player1[:shoe] == player_with_biggest_shoe
#         result = player1
#       end
#   end
# end
# # now that the result object contains Mason Plumlee's hash, return the value associated with :rebounds key
# return result[:rebounds]
# end







# def num_points_scored(player_name)
#   game_hash.each do |team, attributes|
#     attributes.each do |team_stats, nested_data|
#       if team_stats == :players
#         nested_data.each do |player|
#           if player[:player_name] == player_name
#             return player[:points]
#           end
#         end
#       end
#     end
#   end
# end



# def shoe_size(player_name)
#   game_hash.each do |team, attributes|
#     attributes.each do |team_stats, nested_data|
#       if team_stats == :players
#         nested_data.each do |player|
#           if player[:player_name] == player_name
#             return player[:shoe]
#           end
#         end
#       end
#     end
#   end
# end


# def team_colors(basketball_team)
#   game_hash.each do |team, attributes|
#     attributes.each do |team_stats, nested_data|
#       if nested_data == basketball_team
#         return game_hash[team][:colors]
#       end
#     end
#   end
# end
# # ALTERNATIVE, MORE ELEGANT SOLUTION TO THIS METHOD
# # def team_colors(team_name)
# #   game_hash.each do |team, team_data|
# #     return game_hash[team][:colors] if game_hash[team][:team_name] == team_name
# #   end
# # end


# def team_names
#   result = []
#   i = 0
#   while result.length < 2
#     game_hash.each do |team, attributes|
#       attributes.each do |team_stats, nested_data|
#         if team_stats == :team_name
#           result.push(nested_data)
#         end
#       end
#     end
#     i += 1
#   end
#   result
# end


# def player_numbers(basketball_team)
#   result = []
#   game_hash.each do |team, attributes|
#     attributes.each do |team_stats, nested_data|
#       if team_stats == :players
#         nested_data.each do |player|
#           if attributes[:team_name] == basketball_team
#             result.push(player[:number])
#           end
#         end
#       end
#     end
#   end
#   result
# end


# def player_stats(basketball_player)
#   game_hash.each do |team, attributes|
#     attributes.each do |team_stats, nested_data|
#       if team_stats == :players
#         nested_data.each do |player|
#           if player[:player_name] == basketball_player
#             return player
#           end
#         end
#       end
#     end
#   end
# end


# def most_points_scored 
#   high_scorer = nil
#   game_hash.each do |team, attributes|
#     attributes.each do |team_stats, nested_data|
#       if team_stats == :players
#         nested_data.each do |player|
#           if high_scorer == nil || player[:points] > high_scorer[:points]
#             high_scorer = player
#           end
#         end
#       end
#     end
#   end
#   return high_scorer[:player_name]
# end


# def big_shoe_rebounds
#   big_shoe_guy = nil
#   game_hash.each do |team, attributes|
#     attributes.each do |team_stats, nested_data|
#       if team_stats == :players
#         nested_data.each do |player|
#           if big_shoe_guy == nil || player[:shoe] > big_shoe_guy[:shoe]
#             big_shoe_guy = player
#           end
#         end
#       end
#     end
#   end
#   return big_shoe_guy[:rebounds]
# end


# def winning_team
#   home_score = 0
#   away_score = 0
#   game_hash.each do |team, attributes|
#     if team == :home
#       attributes.each do |team_stats, nested_data|
#         if team_stats == :players
#           nested_data.each do |player|
#             home_score += player[:points]
#           end
#         end
#       end
#     elsif team == :away
#       attributes.each do |team_stats, nested_data|
#         if team_stats == :players
#           nested_data.each do |player|
#             away_score += player[:points]
#           end
#         end
#       end
#     end
#   end
#   if home_score > away_score
#     puts "The Nets win!"
#   else
#     puts "The Hornets win!"
#   end
# end


# def player_with_longest_name
#   long_name = nil
#   game_hash.each do |team, attributes|
#     attributes.each do |team_stats, nested_data|
#       if team_stats == :players
#         nested_data.each do |player|
#           if long_name == nil || player[:player_name].length > long_name[:player_name].length
#             long_name = player
#           end
#         end
#       end
#     end
#   end
#   return long_name
# end




# def long_name_steals_a_ton
#   long_name = nil
#   game_hash.each do |team, attributes|
#     attributes.each do |team_stats, nested_data|
#       if team_stats == :players
#         nested_data.each do |player|
#           if long_name == nil || player[:player_name].length > long_name[:player_name].length
#             long_name = player
#           end
#         end
#       end
#     end
#   end
#   best_stealer = nil
#   game_hash.each do |team, attributes|
#     attributes.each do |team_stats, nested_data|
#       if team_stats == :players
#         nested_data.each do |player|
#           if best_stealer == nil || player[:steals] > best_stealer[:steals]
#             best_stealer = player
#           end
#         end
#       end
#     end
#   end
#   return long_name[:steals] == best_stealer[:steals]
# end















def num_points_scored(player_name)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |data_item|
          if data_item[:player_name] == player_name
            return data_item[:points]
          end
        end
      end
    end
  end
end


def shoe_size(player_name)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |data_item|
          if data_item[:player_name] == player_name
            return data_item[:shoe]
          end
        end
      end
    end
  end
end


def team_colors(team_name)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if data == team_name
        return game_hash[location][:colors]
      end
    end
  end
end


def team_names
  result = []
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :team_name
        result.push(data)
      end
    end
  end
  result 
end


def player_numbers(team_name)
  result = []
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if team_name == data
        team_data.each do |key, value|
          if key == :players
            value.each do |player|
              result.push(player[:number])
            end
          end
        end
      end
    end
  end
  result 
end


def player_stats(player_name)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |data_item|
          if data_item[:player_name] == player_name
            return data_item
          end
        end
      end
    end
  end
end



def big_shoe_rebounds
  biggest_shoe = nil
  player_store = nil
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |data_item|
          if biggest_shoe == nil || data_item[:shoe] > biggest_shoe
            biggest_shoe = data_item[:shoe]
            player_store = data_item
          end
        end
      end
    end
  end
  player_store[:rebounds]
end


