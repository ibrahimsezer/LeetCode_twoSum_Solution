void main() {
  Solution run = Solution();
  run.twoSum([2, 7, 11, 15], 18);
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    int tempTarget = 0;
    int i = 0;
    int j = i + 1;
    int count = 0;
    List<int> index = [0, 0];
    while (count < nums.length - 1) {
      tempTarget = nums[i] + nums[j];

      if (tempTarget == target) {
        count = nums.length;
        //print("$i , ${i + 1}");
        break;
      } else if (j < nums.length - 1) {
        j++;
        count++;
      } else if (j == nums.length - 1) {
        count = 0;
        i++;
        j = i + 1;
        count++;
      }
    }

    index[0] = i;
    index[1] = j;
    return index;
  }
}
