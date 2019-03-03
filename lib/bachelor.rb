require 'pry'

def get_first_name_of_season_winner(input_data, input_season)
  input_data.each do |season, data|
    if season == input_season
      data.each do |contestant|
        if contestant["status"] == "Winner"
          #pull first name from Winner
          name_array = contestant["name"].split(" ")
          return name_array[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_number, info|
    info.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
  nil
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, info|
    info.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
