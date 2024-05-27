def solution(s):
    new_s = [int(i) for i in s.split(' ')]
    return f"{min(new_s)} {max(new_s)}"