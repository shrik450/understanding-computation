require 'set'

class NFARulebook < Struct.new(:rules)
  def rules_for(state, character)
    rules.find_all {|rule|
      rule.applies_to? state, character
    }
  end

  def follow_for(state, character)
    rules_for(state, character).map &:follow  
  end

  def next_states(states, character)
    states.flat_map {|state|
      follow_for state, character
    }.to_set
  end

  def inspect
    "#<NFARulebook rules=#{rules.inspect}>"
  end
end

class NFA < Struct.new(:current_states, :accept_states, :rulebook)
  def accepting?
    (accept_states & current_states).size > 0
  end

  def read_character(character)
    self.current_states = rulebook.next_states(current_states, character)
  end

  def read_string(string)
    string.chars.each do |char|
      read_character char
    end
  end
end

class NFADesign < Struct.new(:current_states, :accept_states, :rulebook)
  def to_nfa
    NFA.new(current_states, accept_states, rulebook)
  end

  def accepts?(string)
    to_nfa.tap {|nfa|
      nfa.read_string string
    }.accepting?
  end
end

