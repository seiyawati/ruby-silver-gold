cc = {"nz"=>"New Zealand", "ru"=>"Russia", "ar"=>"Argentina"}

# hash内にキーが存在するか調べるメソッド
p cc.has_key?('nz')
p cc.key?('nz')
p cc.include?('nz')
p cc.member?('nz')
