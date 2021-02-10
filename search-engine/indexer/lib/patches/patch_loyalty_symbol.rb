# frozen_string_literal: true

# Fix loyalty symbols from +1 to [+1] etc. so they can be displayed in a pretty way
class PatchLoyaltySymbol < Patch
  def call
    each_printing do |card|
      next unless (card['types'] || []).include?('Planeswalker')

      card['text'] = card['text'].gsub(/^([+\-−]?(?:\d+|X)):/) { "[#{Regexp.last_match(1)}]:" }
    end
  end
end
