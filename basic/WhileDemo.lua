-- lua中的while循环
a = 10
while (a < 20) do
    print("a的值为：", a)
    a = a + 1
end

-- lua中的for循环: for var=exp1, exp2, exp3 do end 表示var从exp1变化到exp2(包含)，每次变化的步
-- 长为exp3，exp3默认为1可省略
for i = 1, 10 do
    print("i = ", i)
end

-- 每次变化的步长为2
for i = 1, 10, 2 do
    print("i = ", i)
end

-- 泛型for循环，可以用于遍历数组, 遍历数组使用paris, 或者ipairs， 遍历字典使用pairs
arr = { "a", "b", "c", name = "eason" }
for idx, val in pairs(arr) do
    print("idx=", idx, "val=", val)
end

-- repeat ...   until(condition)类似于do  while循环，循环体会先执行一次
a = 10
repeat
    print("a = ", a)
    a = a + 1;
until(a > 20)
