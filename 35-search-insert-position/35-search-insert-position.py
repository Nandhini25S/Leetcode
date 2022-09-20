class Solution:
    def searchInsert(self, nums: List[int], target: int) -> int:
        # for i in range(len(nums)):
        #     if target==nums[i]:
        #         return i
        # return i
        for i,num in enumerate(nums):
            if target==num or target<num:
                return i
        return i+1
