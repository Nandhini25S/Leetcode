class Solution:
    def countOdds(self, low: int, high: int) -> int:
        count=(high-low)//2
        if (low%2!=0 or high%2!=0):
            return count+1
        else:
            return count