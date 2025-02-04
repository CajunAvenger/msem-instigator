# frozen_string_literal: true

class ConditionChampion < ConditionSimple
  def initialize(champion)
    @champion = champion
  end

  def match?(card)
    return false unless card.champion&.downcase.include?(@champion)
    return true if ["MPS_MSE", "CHAMPIONS"].include?(card.set_code)

    return true if card.set_code == "LAIR" && ["99", "119"].include?(card.lairnumber)

    return false
  end

  def to_s
    "champion:#{maybe_quote(@champion)}"
  end
end
