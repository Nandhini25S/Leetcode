class Solution:
    def canMakeArithmeticProgression(self, arr: List[int]) -> bool:
        arr.sort()
        diff = None
        for i in range(0,len(arr)-1):
            n = (arr[i+1]-arr[i])
            if diff is not None and n!=diff: return False
            else: diff=n
        return True