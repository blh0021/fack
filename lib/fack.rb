require 'find'

class Fack
  def help
    puts "to use fack path"
  end

  def find_file(start, file)
    Dir.entries(start)[2..-1].each do |d|
      puts d if d.include?(file)
      find_file(d, file) if File.directory?(d)
    end
  end
end
