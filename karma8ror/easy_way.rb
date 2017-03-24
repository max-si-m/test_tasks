# 5
module EasyWay
  def self.perform(array)
    min_way_array = []
    counts = array.size

    current_index = 0
    counts.times do |n|
      if min_way_array.empty?
        next min_way_array << array[n].first        
      else
        curr_value = array[n][current_index]
        next_value = array[n][current_index + 1]

        item = curr_value <= next_value ? curr_value : next_value
        min_way_array << item
        current_index = array[n].index(item)
      end
    end

    [min_way_array, min_way_array.reduce(:+)]
  end
end
