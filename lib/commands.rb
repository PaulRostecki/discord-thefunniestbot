require 'discordrb'

module Commands
  extend Discordrb::EventContainer
  extend Discordrb::Commands::CommandContainer

  puns = IO.readlines('./lib/puns.txt')

  command :pun do |event|
    event.respond puns.sample
  end

  korwin1 = IO.readlines('./lib/korwin1.txt')
  korwin2 = IO.readlines('./lib/korwin2.txt')
  korwin3 = IO.readlines('./lib/korwin3.txt')
  korwin4 = IO.readlines('./lib/korwin4.txt')
  korwin5 = IO.readlines('./lib/korwin5.txt')
  korwin6 = IO.readlines('./lib/korwin6.txt')

  command :korwin do |event|
    korwinedes1 = korwin1.sample.chomp
    korwinedes2 = korwin2.sample.chomp
    korwinedes3 = korwin3.sample.chomp
    korwinedes4 = korwin4.sample.chomp
    korwinedes5 = korwin5.sample.chomp
    korwinedes6 = korwin6.sample.chomp
    korwinedes = "#{korwinedes1} #{korwinedes2} #{korwinedes3} #{korwinedes4} #{korwinedes5} #{korwinedes6}"
    event.respond korwinedes
  end
end
