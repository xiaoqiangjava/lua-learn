-- lua中的函数
-- lua中的函数可以通过local关键字生命为局部函数，函数可以有多个返回值，使用逗号分隔

function max(x, y)
    if (x > y) then
        result = x
    else
        result = y
    end
    return result
end

-- 调用函数
print("x, y的最大值为：", max(3, 5))
print("x, y的最大值为：", max(20, -1))

-- lua中函数可以作为参数传递给其他函数
myPrint = function(param)
    print("这个是打印函数- ##", param, "##")
end

function add(x, y, func)
    result = x + y
    func(result)
end

add(2, 3, myPrint)

-- 多返回值函数, string.find()函数返回匹配子串的起始和结束索引
start, _end = string.find("www.baidu.com", "baidu")
print("start=", start, "end=", _end)

-- 可变参数：lua中可以结束可变数目的参数，在函数列表中使用...表示函数有可变参数, 也可以
-- 通过select('#', ...)来获取可变参数的数量，select(n, ...)用于返回n到select('#', ...)的参数
function add(...)
    print("传入参数的总数：", select('#', ...))
    local s = 0
    for i, v in ipairs{...} do   -- {...}表示一个有所有边长参数构成的数组
        s = s + v
    end
    return s
end

print(add(1, 2, 3, 4))

-- 求传入参数的平均值
function average(...)
    result = 0
    local arg = {... }
    for i, v in ipairs(arg) do
        result = result + v
    end
    print("总共传入的参数个数：", select('#', ...))
    return result/select('#', ...)
end

print("求平均值：", average(1, 2, 3))

-- lua中的特殊运算符`..`用来拼接字符串 `#`用来获取字符串的长度
name = "eason" .. "zhang"
print("name: ", name)
print("name的长度：", #name)
print("name的长度：", string.len(name))