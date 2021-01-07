-- 使用lua实现抢红包
-- 缓存已经抢上红包的用户信息
local listKey = "red_packet_list" .. KEYS[1]
-- 获取当前红包库存
local redPacketKey = "red_packet_" .. KEYS[2]
local stock = tonumber(redis.call('hget', redPacketKey, 'stock'))
-- 判断当前库存是否充足
if(stock <= 0) then
    return 0
end
-- 库存满足的情况下，将库存减一
stock = stock - 1
-- 保存当前库存
redis.call('hset', redPacketKey, 'stock', tostring(stock))
-- 将抢红包的记录缓存到列表中
redis.call('lpush', listKey, ARGV[1])

return 1