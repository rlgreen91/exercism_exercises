class Gigasecond

	GIGASECOND = 1000000000

	def self.from(birthdate)
		birthdate + GIGASECOND
	end
end

module BookKeeping
	VERSION = 6
end