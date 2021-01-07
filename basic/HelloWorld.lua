-- lua 学习笔记

-- lua 数据类型：nil, string, number, table, boolean
str = "hello world"
print(str)
print(type(str))  --string
num = 2
print(num)
print(type(num)) -- number
num = 2.3
print(num)
print(type(num)) -- number

-- lua中通过table来实现数组，列表，哈希, lua中数组的小标是从1开始，遍历数组使用pairs函数
array = {"a", "b", "c", 1 }
for k, v in pairs(array) do
    print(k, v)  -- 1 a, 2 b, 3 c, 4 1
end

-- lua中Boolean有true和false两个值，在条件判断中nil被认为是false，其他的都被认为是true，数字0也是true
if false or nil then
    print("false和nil至少有一个为true")
else
    print("false和nil都为false")
end

if 0 then
    print("数字0为true")
else
    print("数字0为false")
end

-- function函数，接受一个函数作为参数
function testFun(tab, fun)
    for k,v in pairs(tab) do
        print(fun(k, v))
    end
end
-- 匿名函数，可以传递给另一个函数，lua中连接字符串使用`..`来连接
tab = {name = "eason", age = 28, hobity = "java"}
testFun(tab, function(k, v) return k .. " = " .. v end)
