class MoveLeftCommand < Command
  def execute
    receiver.move_left
  end

  def undo
    receiver.move_right
  end
end
