namespace ValidPalindrome
{
    class Solution
    {
        public bool IsPalindrome(string s)
        {
            string alphaNumStr = String.Concat(s.Where(char.IsLetterOrDigit)).ToLower();
            int leftPoint = 0;
            int rightPoint = alphaNumStr.Length - 1;
            while (leftPoint < rightPoint)
            {
                if (alphaNumStr[leftPoint] != alphaNumStr[rightPoint])
                {
                    return false;
                }
                leftPoint++;
                rightPoint--;
            }
            return true;
        }
    }
}
