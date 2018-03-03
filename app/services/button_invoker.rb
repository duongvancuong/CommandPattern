class ButtonInvoker
  def initialize(name, command)
    @name, @command = name, command
  end

  def press
    History.add @command
    @command.execute
  end
end
