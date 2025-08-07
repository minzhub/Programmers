def solution(myStr):
    for sep in "abc":
        myStr = myStr.replace(sep, '|')
    
    # '|'를 기준으로 split
    result = myStr.split('|')

    # 빈 문자열 제거
    result = [s for s in result if s]

    # 결과가 비어 있으면 ["EMPTY"] 반환
    return result if result else ["EMPTY"]