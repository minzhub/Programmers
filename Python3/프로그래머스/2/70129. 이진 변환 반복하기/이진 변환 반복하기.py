def solution(s):
    times = 0
    zero_count = 0
    
    while s != "1":
        times += 1
        zero_count += s.count("0")
        s = bin(s.count("1"))[2:]
    
    return [times, zero_count]