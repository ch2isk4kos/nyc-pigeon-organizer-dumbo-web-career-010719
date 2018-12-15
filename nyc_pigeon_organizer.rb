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

# Solution:
def nyc_pigeon_organizer(data)
    new_hash = {}

    data.each do |attributes, values|
        values.each do |value, array|
            array.each do |name|
                if new_hash[name] == nil
                    new_hash[name] = {}
                    new_hash[name][attributes] = []
                else
                    new_hash[name][attributes] = []
                end
            end
        end
    end

    new_hash.each do |name, values|
        values.each do |hash_val, hash_arr|
            data.each do |attributes, value|
                value.each do |val, arr|
                    arr.each do |element|
                        if element == name && hash_val == attributes
                            new_hash[name][hash_val] << val.to_s
                        end
                    end
                end
            end
        end
    end
    new_hash
end
