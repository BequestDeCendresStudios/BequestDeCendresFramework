module TravelingNodes
  class Node1

    def self.generate_discrete
      label_set         = File.readlines("lib/data/metrics/objects/village.txt")
      label_index       = 0
      label_probability = label_index.to_f / 1

      iteration_limit = label_set.size.to_i

      iteration_limit.times do
        current_label = label_set[label_index]

        puts "[ #{current_label}, #{label_probability} ]"

        @recaculated_probability = label_probability

        label_index + 1
      end

      puts "Most probable probability is: #{@recaculated_probability}."

      case @recalculated_probability
      when 0.001..0.375; puts "[ The current probability is low,    #{@recaculated_probability} ]"
      when 0.375..0.500; puts "[ The current probability is mild,   #{@recaculated_probability} ]"
      when 0.501..0.750; puts "[ The current probability is medium, #{@recaculated_probability} ]"
      when 0.751..1.000; puts "[ The current probability is high,   #{@recaculated_probability} ]"
      else
        puts "Error: The strength of the label set is not known."
      end
    end

  end

  class Node2

    def self.generate_discrete
      label_set         = File.readlines("lib/data/metrics/objects/graveyard.txt")
      label_index       = 0
      label_probability = label_index.to_f / 1

      iteration_limit = label_set.size.to_i

      iteration_limit.times do
        current_label = label_set[label_index]

        puts "[ #{current_label}, #{label_probability} ]"

        @recaculated_probability = label_probability

        label_index + 1
      end

      puts "Most probable probability is: #{@recaculated_probability}."

      case @recalculated_probability
      when 0.001..0.375; puts "[ The current probability is low,    #{@recaculated_probability} ]"
      when 0.375..0.500; puts "[ The current probability is mild,   #{@recaculated_probability} ]"
      when 0.501..0.750; puts "[ The current probability is medium, #{@recaculated_probability} ]"
      when 0.751..1.000; puts "[ The current probability is high,   #{@recaculated_probability} ]"
      else
        puts "Error: The strength of the label set is not known."
      end
    end

  end

  class Node4

    def self.generate_discrete
      label_set         = File.readlines("lib/data/metrics/objects/catecombs.txt")
      label_index       = 0
      label_probability = label_index.to_f / 1

      iteration_limit = label_set.size.to_i

      iteration_limit.times do
        current_label = label_set[label_index]

        puts "[ #{current_label}, #{label_probability} ]"

        @recaculated_probability = label_probability

        label_index + 1
      end

      puts "Most probable probability is: #{@recaculated_probability}."

      case @recalculated_probability
      when 0.001..0.375; puts "[ The current probability is low,    #{@recaculated_probability} ]"
      when 0.375..0.500; puts "[ The current probability is mild,   #{@recaculated_probability} ]"
      when 0.501..0.750; puts "[ The current probability is medium, #{@recaculated_probability} ]"
      when 0.751..1.000; puts "[ The current probability is high,   #{@recaculated_probability} ]"
      else
        puts "Error: The strength of the label set is not known."
      end
    end

  end

  class Node8

    def self.generate_discrete
      label_set         = File.readlines("lib/data/metrics/objects/caverns.txt")
      label_index       = 0
      label_probability = label_index.to_f / 1

      iteration_limit = label_set.size.to_i

      iteration_limit.times do
        current_label = label_set[label_index]

        puts "[ #{current_label}, #{label_probability} ]"

        @recaculated_probability = label_probability

        label_index + 1
      end

      puts "Most probable probability is: #{@recaculated_probability}."

      case @recalculated_probability
      when 0.001..0.375; puts "[ The current probability is low,    #{@recaculated_probability} ]"
      when 0.375..0.500; puts "[ The current probability is mild,   #{@recaculated_probability} ]"
      when 0.501..0.750; puts "[ The current probability is medium, #{@recaculated_probability} ]"
      when 0.751..1.000; puts "[ The current probability is high,   #{@recaculated_probability} ]"
      else
        puts "Error: The strength of the label set is not known."
      end
    end

  end

  class Node7
    def self.generate_discrete
      label_set         = File.readlines("lib/data/metrics/objects/ancientruins.txt")
      label_index       = 0
      label_probability = label_index.to_f / 1

      iteration_limit = label_set.size.to_i

      iteration_limit.times do
        current_label = label_set[label_index]

        puts "[ #{current_label}, #{label_probability} ]"

        @recaculated_probability = label_probability

        label_index + 1
      end

      puts "Most probable probability is: #{@recaculated_probability}."

      case @recalculated_probability
      when 0.001..0.375; puts "[ The current probability is low,    #{@recaculated_probability} ]"
      when 0.375..0.500; puts "[ The current probability is mild,   #{@recaculated_probability} ]"
      when 0.501..0.750; puts "[ The current probability is medium, #{@recaculated_probability} ]"
      when 0.751..1.000; puts "[ The current probability is high,   #{@recaculated_probability} ]"
      else
        puts "Error: The strength of the label set is not known."
      end
    end
  end

  class Node5
    def self.generate_discrete
      label_set         = File.readlines("lib/data/metrics/objects/kumabattolair.txt")
      label_index       = 0
      label_probability = label_index.to_f / 1

      iteration_limit = label_set.size.to_i

      iteration_limit.times do
        current_label = label_set[label_index]

        puts "[ #{current_label}, #{label_probability} ]"

        @recaculated_probability = label_probability

        label_index + 1
      end

      puts "Most probable probability is: #{@recaculated_probability}."

      case @recalculated_probability
      when 0.001..0.375; puts "[ The current probability is low,    #{@recaculated_probability} ]"
      when 0.375..0.500; puts "[ The current probability is mild,   #{@recaculated_probability} ]"
      when 0.501..0.750; puts "[ The current probability is medium, #{@recaculated_probability} ]"
      when 0.751..1.000; puts "[ The current probability is high,   #{@recaculated_probability} ]"
      else
        puts "Error: The strength of the label set is not known."
      end
    end
  end
end

module ChargingNodes
  class Node3 # Measures HP
    def self.generate_discrete
      label_set         = File.readlines("lib/data/metrics/player/hp.txt")
      label_index       = 0
      label_probability = label_index.to_f / 1

      iteration_limit = label_set.size.to_i

      iteration_limit.times do
        current_label = label_set[label_index]

        puts "[ #{current_label}, #{label_probability} ]"

        @recaculated_probability = label_probability

        label_index + 1
      end

      puts "Most probable probability is: #{@recaculated_probability}."

      case @recalculated_probability
      when 0.001..0.375; puts "[ The current probability is low,    #{@recaculated_probability} ]"
      when 0.375..0.500; puts "[ The current probability is mild,   #{@recaculated_probability} ]"
      when 0.501..0.750; puts "[ The current probability is medium, #{@recaculated_probability} ]"
      when 0.751..1.000; puts "[ The current probability is high,   #{@recaculated_probability} ]"
      else
        puts "Error: The strength of the label set is not known."
      end
    end
  end
  end

  class Node6 # Measures Hunger
    def self.generate_discrete
      label_set         = File.readlines("lib/data/metrics/player/hunger.txt")
      label_index       = 0
      label_probability = label_index.to_f / 1

      iteration_limit = label_set.size.to_i

      iteration_limit.times do
        current_label = label_set[label_index]

        puts "[ #{current_label}, #{label_probability} ]"

        @recaculated_probability = label_probability

        label_index + 1
      end

      puts "Most probable probability is: #{@recaculated_probability}."

      case @recalculated_probability
      when 0.001..0.375; puts "[ The current probability is low,    #{@recaculated_probability} ]"
      when 0.375..0.500; puts "[ The current probability is mild,   #{@recaculated_probability} ]"
      when 0.501..0.750; puts "[ The current probability is medium, #{@recaculated_probability} ]"
      when 0.751..1.000; puts "[ The current probability is high,   #{@recaculated_probability} ]"
      else
        puts "Error: The strength of the label set is not known."
      end
    end
  end
  end

  class Node9 # Measures Pet Metrics
    def self.generate_discrete
      label_set         = File.readlines("lib/data/metrics/objects/thirst.txt")
      label_index       = 0
      label_probability = label_index.to_f / 1

      iteration_limit = label_set.size.to_i

      iteration_limit.times do
        current_label = label_set[label_index]

        puts "[ #{current_label}, #{label_probability} ]"

        @recaculated_probability = label_probability

        label_index + 1
      end

      puts "Most probable probability is: #{@recaculated_probability}."

      case @recalculated_probability
      when 0.001..0.375; puts "[ The current probability is low,    #{@recaculated_probability} ]"
      when 0.375..0.500; puts "[ The current probability is mild,   #{@recaculated_probability} ]"
      when 0.501..0.750; puts "[ The current probability is medium, #{@recaculated_probability} ]"
      when 0.751..1.000; puts "[ The current probability is high,   #{@recaculated_probability} ]"
      else
        puts "Error: The strength of the label set is not known."
      end
    end
  end
  end
end

def traveling_nodes
  TravelingNodes.Node1.generate_discrete
  TravelingNodes.Node2.generate_discrete
  TravelingNodes.Node4.generate_discrete
  TravelingNodes.Node8.generate_discrete
  TravelingNodes.Node7.generate_discrete
  TravelingNodes.Node5.generate_discrete
end

def charging_nodes
  ChargingNodes.Node3.generate_discrete
  ChargingNodes.Node6.generate_discrete
  ChargingNodes.Node9.generate_discrete
end
