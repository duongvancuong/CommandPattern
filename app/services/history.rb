class History
  class << self
    def stack
      @stack ||= []
    end

    def add command
      stack << command
    end

    def undo
      command = stack.pop
      command.undo
      p "Undoing #{command.class} command"
    end

    def undo_all
      stack.each do |command|
        command.undo
        p "Undoing #{command.class} command"
      end
    end
  end
end
