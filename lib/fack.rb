require 'find'

class Fack
  def help
    puts "To use: fack <search_string>"
  end

  def find_file(start, file)
    Dir.entries(start)[2..-1].each do |d|
      puts d if d.include?(file)
      find_file(d, file) if File.directory?(d)
    end
  end

  def print_find(start, file)
    stack = Dir.entries(start)[2..-1]
    while (!stack.empty?)
      f = stack.pop
      puts f if f.include?(file)
      if File.directory?(f)
        stack = stack + Dir.entries(f)[2..-1]
      end
    end
  end
end
