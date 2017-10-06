class Hamming

	def self.compute(original, copy)
		raise ArgumentError if original.length != copy.length
		changes = 0
		original.chars.each_index do |position|
			changes += 1 if original[position] != copy[position]
		end
		changes
	end
end

module BookKeeping
	VERSION = 3
end