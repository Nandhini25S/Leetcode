class Solution:
    def arraySign(self, nums: List[int]) -> int:
        res = 1
        for i in range(0,len(nums)):
            res = res*nums[i]
        if(res>0): return 1
        elif(res<0): return -1
        else: return 0