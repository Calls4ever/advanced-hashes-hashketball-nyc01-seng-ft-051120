# Write your code below game_hash
require 'pry'
def game_hash
  data={
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
  return data
end
def num_points_scored(name)
  points_scored=0
  data= game_hash
data[:home][:players].each{|n|
   if name == n[:player_name]
     points_scored=n[:points]
   end
   }
if points_scored==0
  data[:away][:players].each{|n|
     if name == n[:player_name]
       points_scored=n[:points]
     end
     }
end
if points_scored==0
  return "fuck you China! Thanks for corona!"
else return points_scored
end

end
def shoe_size(name)
  size=3000
  data= game_hash
data[:home][:players].each{|n|
   if name == n[:player_name]
     size=n[:shoe]
   end
   }
if size==3000
  data[:away][:players].each{|n|
     if name == n[:player_name]
       size=n[:shoe]
     end
     }
end
if size==3000
  return "i love you 3000 #{name}!"
else return size
end

end
def team_colors(team)
  data=game_hash
  colors=""
  if data[:home][:team_name]==team
    colors=[data[:home][:colors][0] ,data[:home][:colors][1]]
elsif data[:away][:team_name]==team
    colors=[data[:away][:colors][0] , data[:away][:colors][1]]
  else colors="Team is not playing in this matach!"
    return colors
end
end

# Write code here
def team_names
  data=game_hash
return [ data[:home][:team_name], data[:away][:team_name]]

end

def player_numbers(name="Brooklyn Nets")
data =game_hash
number=[]

data[:home][:players].each{ |n|
if name == data[:home][:team_name]
  number.push(n[:number])
end
}


  data[:away][:players].each{ |n|
    if name == data[:away][:team_name]
      number.push(n[:number])
end
}
if number==[]
  number=["Tibet lost it's country to China in #{number}!"]
else  return number.sort
end

end
def player_stats(name="Alan Anderson")
  data=game_hash
  stats={}
  data[:home][:players].each{ |key|
    if key[:player_name]==name
      key.each{ |n, m|
        stats[n]=m
    }
end
  }
  data[:away][:players].each{ |key|
    if key[:player_name]==name
    key.each{ |n, m|
        stats[n]=m
    }
end
  }
return stats
end
def big_shoe_rebounds
  data=game_hash
  biggest_shoe=0
  rebounds=0
  data[:home][:players].each{|n|
    if n[:shoe]>biggest_shoe
      biggest_shoe=n[:shoe]
      rebounds=n[:rebounds]
    end
  }
  data[:away][:players].each{|n|
    if n[:shoe]>biggest_shoe
      biggest_shoe=n[:shoe]
      rebounds=n[:rebounds]
    end
  }
return rebounds
end
def most_points_scored
  data=game_hash
  highest_points=0
  high_scorer=""
  data[:home][:players].each{ |n|
    if n[:points]>highest_points
      highest_points=n[:points]
      high_scorer=n[:player_name]
    end
  }
  data[:away][:players].each{ |n|
    if n[:points]>highest_points
      highest_points=n[:points]
      high_scorer=n[:player_name]
    end
  }
  return high_scorer

end
def winning_team
  data=game_hash
  home=0
  away=0
  data[:home][:players].each{ |n|
    home +=n[:points]
  }
  data[:away][:players].each{ |n|
    away +=n[:points]
  }
  if away>home
     return "WOW!! Charlotte Hornets won the game!!1"
     else
    return  "WOWOWOWOW!!! Brooklyn Nets won the game!!"
     end

end


def player_with_longest_name
  data=game_hash
  name_length=0
  name=""
  data[:home][:players].each{ |n|
    if n[:player_name].length>name_length
      name_length=n[:player_name].length
      name=n[:player_name]
    end
  }
  data[:away][:players].each{ |n|
    if n[:player_name].length>name_length
      name_length=n[:player_name].length
      name=n[:player_name]
    end
  }
  return name
  binding.pry
end
def long_name_steals_a_ton?
  data=game_hash
  steal=0
  longest_name=0
  stealer=""
  long_name=""
  data[:home][:players].each{ |n|
    if n[:player_name].length>longest_name
      longest_name=n[:player_name].length
      long_name=n[:player_name]
    end
    if n[:steals]>steal
      steal=n[:steals]
      stealer=n[:player_name]
    end
  }
  data[:away][:players].each{ |n|
    if n[:player_name].length>longest_name
      longest_name=n[:player_name].length
      long_name=n[:player_name]
    end
    if n[:steals]>steal
      steal=n[:steals]
      stealer=n[:player_name]
    end
  }
if stealer==long_name
  return true
else false
end

end
