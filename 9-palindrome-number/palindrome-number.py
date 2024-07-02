class Solution:
    def isPalindrome(self, x: int) -> bool:
        my_string=str(x)
        if my_string == my_string[::-1]:
            return True
        return False
        