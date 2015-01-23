require 'find'

class Fack
  def help
    puts "To use: fack <search_string>"
  end

  def print_check(a, b)
    puts a if a.include? b
  end

  def print_find(start, file)
    Dir.glob('**/*') { |f| print_check(f, file) }
  end
end
