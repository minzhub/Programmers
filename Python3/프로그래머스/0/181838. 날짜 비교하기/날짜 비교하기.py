def solution(date1, date2):
    return int(int(''.join(str(i) for i in date1)) < int(''.join(str(i) for i in date2)))