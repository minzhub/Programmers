def solution(num_list):
    return sorted([sum(num_list[::2]), sum(num_list[1::2])])[-1]