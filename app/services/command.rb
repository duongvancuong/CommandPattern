class Command
  attr_accessor :receiver

  def initialize receiver
    @receiver = receiver
  end

  def execute
    raise NotImplementedError
  end

  def undo
    raise NotImplementedError
  end
end
