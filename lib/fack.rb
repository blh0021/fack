require 'colorize'

class Fack
  def help
    puts "To use: fack <search_string>"
  end

  def print_check(a, b)
    if a.include? b
      puts a.gsub(/#{b}/, b.colorize(:red))
    end
  end

  def print_find(start, file)
    Dir.glob('**/*') { |f| print_check(f, file) }
  end
end
