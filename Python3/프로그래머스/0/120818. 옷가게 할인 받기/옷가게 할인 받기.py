def solution(price):
    answer = price
    discount_rate = {100000:0.95, 300000:0.9, 500000:0.8}
    for standard, rate in discount_rate.items():
        if standard <= price:
            answer = int(price*rate)
    return answer