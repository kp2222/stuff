class WorldRenderer

  attr_accessor :world

  def initialize(world)
    @world =  world
  end

  def render
    system("clear")
    @world.map.each do |row|
      row.each do |cell|
        print green "." if cell == 0
        print  red "*"  if cell == 1
        print " "
      end
      print "\n"  
    end
  end
  
  private
  
  def colorize(text, color_code)
    "\e[#{color_code}m#{text}\e[0m"
  end
  
  def red(text); colorize(text, 31); end
  
  def green(text); colorize(text, 32); end
  
end
