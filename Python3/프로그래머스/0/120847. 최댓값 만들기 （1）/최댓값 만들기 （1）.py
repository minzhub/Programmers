def solution(numbers):
    array = sorted(numbers, reverse=True)
    return array[0] * array[1]