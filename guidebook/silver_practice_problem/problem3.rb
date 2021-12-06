begin
  puts 1 + "2"
# rescue節で例外型を省略すると、StandardErrorとそのサブクラス例外を補足する。
rescue
  puts "Error."
# TypeErrorはサブクラスより上で拾う。
rescue TypeError
  puts "Type Error."
# ensure節は必ず実行される。
ensure
  puts "Ensure."
end
