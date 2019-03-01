require 'pry'
def game_hash
  {:away => {
    :team_name => ["Charlotte Hornets"],
    :colors => ["Turquoise", "Purple"],
    :players => {
      "Jeff Adrien" => {
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2},
      "Bismak Biyombo" => {
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 7,
        :blocks => 15,
        :slam_dunks => 10},
      "DeSagna Diop" => {
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5},
      "Ben Gordon" => {
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0},
      "Brendan Haywood" => {
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 22,
        :blocks => 5,
        :slam_dunks => 12}
      }
    },
   :home => {
     :team_name => ["Brooklyn Nets"],
     :colors => ["Black", "White"],
     :players => {
      "Alan Anderson" => {
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1},
      "Reggie Evans" => {
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7},
      "Brook Lopez" => {
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15},
      "Mason Plumlee" => {
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 12,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5},
      "Jason Terry" => {
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1}

     }
     }
   }
end

def good_practices
  game_hash.each do |location, team_data|
      team_data.each do |attribute, data|
        data.each do |data_item|
      end
    end
  end
end

def num_points_scored(name)
  answer = 0
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if data.include?(name)
       answer = game_hash[location][attribute][name][:points]
      end
    end
  end
answer
end

def shoe_size(name)
  answer = 0
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if data.include?(name)
       answer = game_hash[location][attribute][name][:shoe]
      end
    end
  end
answer
end

def team_colors(team)
  answer = ""
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if data.include?(team)
        answer = game_hash[location][:colors]
      end
      end
    end
    answer
  end

  def team_names
    teams = []
    game_hash.each do |location, team_data|
      team_data.each do |attribute, data|
        teams.push game_hash[location][:team_name]
      end
    end
    teams.flatten.uniq
  end


def player_numbers(team)
numbers = []
game_hash.each do |location, team_data|
  team_data.each do |attribute, data|
    if game_hash[location][:team_name].join == team && attribute == :players
      data.each do |player, stats|
          numbers << game_hash[location][:players][player][:number]
      end
    end
    end
end
numbers
end

def player_stats(name)
  answer = {}
  game_hash.each do |location, team_data|
      team_data.each do |attribute, data|
        if data.include?(name)
          data.each do |player,stats|
            answer = game_hash[location][:players][name]
          end
        end
    end
  end
  answer
end


#game_hash[location][attribute][name][:rebounds]

def big_shoe_rebounds
  bigfoot = 0
  bigfoot_rebounds = 0
  game_hash.each do |location, team_data|
      team_data.each do |attribute, data|
        if attribute == :players
          data.each do |player,stats|
            stats.each do |stat,value|
              if stat == :shoe
                if bigfoot == 0
                  bigfoot = value
                  bigfoot_rebounds = game_hash[location][:players][player][:rebounds]
                elsif value > bigfoot
                  bigfoot = value
                  bigfoot_rebounds = game_hash[location][:players][player][:rebounds]
                end
              end
             end
          end
        end
      end
  end
bigfoot_rebounds
end
