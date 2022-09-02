class Solution:
    def countOdds(self, low: int, high: int) -> int:
        cnt = (high-low)//2
        if (low%2!=0 or high%2!=0):
            cnt += 1
        return cnt