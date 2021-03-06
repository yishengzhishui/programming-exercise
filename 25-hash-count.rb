# 计算一个阵列中各个元素的出现频率

def count(arr)
  h = {}
  i = 0
  n = arr.size

  while i < n
    a = arr.first # 从第一个开始计算，算晚删除后第一位就换了
    value = 0
    arr.each do |p|
      value += 1 if a == p
      h[a] = value
    end
    arr -= [a]
    i += 1
  end

  h # 回传一个 hash
end

arr =  %w[a d d c b c c c d d e e e d a c e a d e]

answer = count(arr)

puts answer # 答案应该是 {"a"=>3, "d"=>6, "c"=>5, "b"=>1, "e"=>5}
