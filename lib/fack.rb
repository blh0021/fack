require 'colorize'

class Fack

  attr_accessor :ignore

  def help
    puts "To use: fack <search_string>"
  end

  def print_check(a, b)
    search=nil
    if @ignore
      search = a.to_enum(:scan, /#{b}/i).map { Regexp.last_match }
        #a.match(/#{b}/i)
    else
      search = a.to_enum(:scan, /#{b}/).map { Regexp.last_match }
        #match(/#{b}/)
    end

    search.each do |s|
      puts a.gsub(/#{s.to_s}/, s.to_s.colorize(:red))
    end
  end

  def print_find(start, file)
    Dir.glob('**/*') { |f| print_check(f, file) }
  end
end
