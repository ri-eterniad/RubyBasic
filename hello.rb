module Debug
    def info 
        puts "#{self.class} debug info.."
    end
end

class Player
    include Debug
end


class Monster
    include Debug
end

Monster.new.info
Player.new.info

=begin
実行
ミックスイン
共通の機能を提供する場合に便利
=end