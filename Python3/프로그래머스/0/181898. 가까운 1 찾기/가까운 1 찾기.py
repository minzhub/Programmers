def solution(arr, idx):
    answer = -1
    if 1 in arr[idx:]:
        for i, j in enumerate(arr[idx:]):
            if j == 1:
                answer = idx + i
                break
    return answer