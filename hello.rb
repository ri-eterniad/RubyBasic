module Movie

    def self.encode
        puts "encoding.."
    end
    def self.export
        puts "exporting.."
    end
end

Movie.encode
Movie.export


=begin
実行
モジュール
インスタンスの作成や継承できない

このように関連するメソッドや定数などをざっとまとめて
グループ化したいだけのとき便利
=end