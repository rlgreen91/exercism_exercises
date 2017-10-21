class Complement

	RNA_TRANSCRIPTION_MAPPING = { "G" => "C",
							  	  "C" => "G",
							  	  "T" => "A",
							  	  "A" => "U" }.freeze

	def self.of_dna(original_strand)
		transcribed_chars = original_strand.chars.map do |nucleotide|
			rna_char = RNA_TRANSCRIPTION_MAPPING[nucleotide] 
			raise ArgumentError.new("Invalid DNA input") if rna_char.nil?
			rna_char
		end
		transcribed_chars.join
	rescue ArgumentError => e
		puts e.message
		return ""
	end
end

module BookKeeping
	VERSION = 4.freeze
end