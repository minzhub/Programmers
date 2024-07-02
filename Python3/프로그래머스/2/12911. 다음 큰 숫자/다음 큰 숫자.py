def solution(n):
    o = bin(n).count('1')
    answer = n+1
    while bin(answer).count('1')!=o:
        answer+=1
    return answer