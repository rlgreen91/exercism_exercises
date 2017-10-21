class Gigasecond

	GIGASECOND = (10 ** 9).freeze
	def self.from(birthdate)
		birthdate + GIGASECOND
	end
end

module BookKeeping
	VERSION = 6.freeze
end