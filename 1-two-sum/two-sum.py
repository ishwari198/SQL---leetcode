class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        for i in range(0,len(nums)):
            val = target - nums[i]
            if val in nums and i != nums.index(val):
                return [i,nums.index(val)]
       
               