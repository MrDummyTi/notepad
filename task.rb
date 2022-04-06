require 'date'
class Task < Post
  def initialize
    super
    @due_date = Time.now
  end

  def read_from_console
    puts "Что надо сделать?"
    @text = STDIN.gets.chomp

    puts "К какому числу? Укажите дату в формате ДД.ММ.ГГГГ, например 12.05.2003"
    time_completed = STDIN.gets.chomp
    @due_date = Data.parse(time_completed)
  end

  def to_strings
    time_string = "Созданно: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

    dedline = "Крайний срок: #{@due_date}"
    return [dedline, @text, time_string]
  end
end