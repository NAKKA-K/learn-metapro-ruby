require 'rake'

# 最新バージョンではconst_missingの実装は存在しないため、仮の定義を追加
class Module
  def const_missing(const_name)
    case const_name
    when :Task
      puts "WARNING: Deprecated"
      Rake::Task
    end
  end
end

task_class = Task
