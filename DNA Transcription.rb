#converts a DNA Strand to RNA 

print "Provide a DNA strand sequence to get the transcription sequence (RNA)"
dna = gets.chomp.upcase.split("")
rna = dna.clone

def replace_char(letter)
  replacements = {
    'G': 'C',
    'C': 'G',
    'T': 'A',
    'A': 'U'
  }

  replacements[letter.to_sym] || letter
end

rna.each_with_index do |letter, index|
  rna[index] = replace_char(letter)
end

puts "DNA sequence #{dna.join("-")}" 
print "RNA sequence #{rna.join("-")}"
