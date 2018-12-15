# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }

# FIRST ATTEMPT
# def nyc_pigeon_organizer(data)
#     # write your code here!
#     new_hash = {}
#
#     data.each do |key, value|
#         value.each do |val, el|
#             pigeon_data[val][el] << new_hash
#         end
#     end
# end

# def nyc_pigeon_organizer(data)
#     # write your code here!
#     new_hash = {}
#
#     data.each do |property, hash|
#         hash.each do |attribute, array|
#             array.each do |name|
#                 if !new_hash.has_key?(name)
#                     new_hash[name] = {}
#                 end
#
#                 if !new_hash[name].has_key?(property)
#                     new_hash[name][property] = []
#                 end
#
#                 if !new_hash[name][property].include?(attribute)
#                     new_hash[name][property] << attribute.to_s
#                 end
#             end
#         end
#     end
#     new_hash
# end

def nyc_pigeon_organizer (data)
  final = {}

  data.each do |first_level, all_other|
    all_other.each do |category, array|
      array.each do |name|
        final[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  x = final.keys
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][:color] << bird_color.to_s
        end
      end
    end
  end
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][:gender] << gender.to_s
        end
      end
    end
  end
  data[:lives].each do |location, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][:lives] << location
        end
      end
    end
  end

  return final
end 
