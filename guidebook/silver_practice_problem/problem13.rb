class Employee
  attr_reader :id
  attr_accessor :name
  def initialize(id, name)
    @id = id
    @name = name
  end
  # 文字列以外のオブジェクトがprintやputsに渡った時、to_sを使って文字列変換する
  def to_s
    return "#{@id}:#{@name}"
  end
  # 演算子<=>を再定義する。
  def <=> other
    return self.id <=> other.id
  end
end

employees = []
employees << Employee.new("3", "Tanaka")
employees << Employee.new("1", "Suzuki")
employees << Employee.new("2", "Sato")
p employees
employees.sort!
p employees
# p employees.sort_by{|employee|employee.id}
employees.each do |employee| puts employee end

arr = [1, 4, 3, 2, 5]
p arr.sort{|a, b| a.to_i <=> b.to_i} # 昇順
p arr.sort{|a, b| b.to_i <=> a.to_i} # 降順

10 <=> 20   #  -1
20 <=> 10   #   1
20 <=> 20   #   0
20 <=> '20' # nil

# sortメソッドで行われること
1. 配列の各要素に対して、他の要素と比較した際の戻り値の合計を割り当てる。
2. その値を昇順で並べる
