# Kernelにdefineされたメソッドはトップレベルから呼び出せる
# しかしlambdaというスコープに束縛されたsetups変数などは外から見えないためグローバル性を排除できる
lambda {
  setups = []
  events = []

  Kernel.send :define_method, :setup do |&block|
    setups << block
  end

  Kernel.send :define_method, :event do |description, &block|
    events << { description: description, condition: block }
  end

  Kernel.send :define_method, :each_setup do |&block|
    setups.each do |setup|
      block.call setup
    end
  end

  Kernel.send :define_method, :each_event do |&block|
    events.each do |event|
      block.call event
    end
  end
}.call

load 'blocks/redflag_5/events.rb'

each_event do |event|
  env = Object.new # setupやeventで使用するインスタンス変数を閉じ込めておくサンドボックスのようなインスタンス(通称クリーンルーム)
  each_setup do |setup|
    env.instance_eval &setup # Procをブロックに変換して、そのままinstance_evalのブロックとしている
  end

  puts "ALERT: #{event[:description]}" if env.instance_eval &(event[:condition]) # 上同
end

