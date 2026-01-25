class Component
  # @return [String]
  def calculate_price
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
