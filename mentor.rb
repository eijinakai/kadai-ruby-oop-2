#Mentorクラスの定義
class Mentor

  #Mentor クラスにインスタンス変数nameを持たせた。
  attr_accessor :name
  
  #initialize の処理を定義し、名前のインスタンス変数を初期化できるようにした。
  def initialize(name)
    self.name = name
  end

  #Mentor クラスにjobメソッドを持たせ、「 ○○です。私は現役のITプロフェッショナルです。」 と表示できるようにした。
  def job
    puts "#{self.name}です。私は現役のITプロフェッショナルです。"
  end
end

#煌木（変数名：kirameki）という名前を持つ Mentor クラスのインスタンスを生成してinitializeで名前を初期化。
mentor_name1 = Mentor.new('煌木')

#RailsMentorクラスの定義とMentorクラスを継承するため、「class RailsMentor < Mentor」と記述した。
class RailsMentor < Mentor
  
#class RailsMentor < mentorの記載に加え、メソッド名を変更しないことで、job メソッドをオーバーライドしインスタンス変数の値を
#使って 「○○です。私はRubyとRailsでWebアプリケーションを作ります。 」と表示するメソッドにした。
  def job
    puts"#{self.name}です。私はRubyとRailsでWebアプリケーションを作ります。"
  end
end

#赤出（変数名：akaide）という名前を持つ RailsMentor クラスのインスタンスを生成してinitializeで名前を初期化。
mentor_name2 = RailsMentor.new('赤出')

#jobの呼び出し
mentor_name1.job
mentor_name2.job

