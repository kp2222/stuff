$: << File.expand_path(File.dirname(__FILE__))

require 'world'
require 'world_renderer'
WORLD_SIZE = ARGV[0].to_i || 100
WORLD_SEED = WORLD_SIZE.times.collect{ WORLD_SIZE.times.collect { [0,1].sample }}
world = World.new WORLD_SEED
renderer = WorldRenderer.new world


while(true) do
  renderer.render
  sleep 0.1
  world.progress
end
