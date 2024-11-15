def solution(num_list):
    answer = 1
    if len(num_list) <= 10:
        for i in num_list:
            answer*=i
    else:
        answer = sum(num_list)        
    return answer