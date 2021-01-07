-- lua中的控制语句

-- lua中0表示的是true，只有false和nil为表示false
if (0) then
    print("0表示的是true")
else
    print("0表示的是false")
end

-- if elseif
a = 85
if (a > 90) then
    print("优秀")
elseif (a > 80) then
    print("良好")
else
    print("一般")
end
