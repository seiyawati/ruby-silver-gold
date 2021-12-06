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