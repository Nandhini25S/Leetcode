class Solution:
    def searchRange(self, nums: List[int], target: int) -> List[int]:
        res = []
        if(nums.count(target)==0):
            return [-1,-1]
        res.append(nums.index(target))
        for i in range(len(nums)-1,-1,-1):
            if(target==nums[i]):
                res.append(i)
                break
        return res