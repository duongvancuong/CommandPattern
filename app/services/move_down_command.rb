class MoveDownCommand < Command
  def execute
    receiver.move_down
  end

  def undo
    receiver.move_up
  end
end
