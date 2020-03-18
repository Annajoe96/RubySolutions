def find_allergies(score)

  #allergyscorelist

  allergies_list = {
    1   => 'eggs',
    2   => 'peanuts',
    4   => 'shellfish',
    8   => 'strawberries',
    16  => 'tomatoes',
    32  => 'chocolate',
    64  => 'pollen',
    128 => 'cats'
  }.freeze

  allergies = []
  
  #total score used to calculate contributing allergies

  until score == 0
    prev_allergy_score = 2 ** Math.log2(score).floor
    allergies << prev_allergy_score
    score -= prev_allergy_score
  end
  
  

  allergies.map{|e| allergies_list[e] }.compact
end

#call method with total allergy score
print find_allergies(128)
