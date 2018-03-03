class MoveUpCommand < Command
  def execute
    receiver.move_up
  end

  def undo
    receiver.move_down
  end
end
