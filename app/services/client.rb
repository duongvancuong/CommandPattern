class Client
  attr_accessor :receiver

  def initialize
    @receiver = RobotReceiver.new
    @move_up_cmd = MoveUpCommand.new @receiver
    @move_down_cmd = MoveDownCommand.new @receiver
    @move_right_cmd = MoveRightCommand.new @receiver
    @move_left_cmd = MoveLeftCommand.new @receiver
  end

  def move_with key
    case key
    when "up"
      ButtonInvoker.new(key, @move_up_cmd).press
    when "down"
      ButtonInvoker.new(key, @move_down_cmd).press
    when "right"
      ButtonInvoker.new(key, @move_up_right).press
    else
      ButtonInvoker.new(key, @move_up_left).press
    end
  end
end
