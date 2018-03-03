class MoveRightCommand < Command
  def execute
    receiver.move_right
  end

  def undo
    receiver.move_left
  end
end
