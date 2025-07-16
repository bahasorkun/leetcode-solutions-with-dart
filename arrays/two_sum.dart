// Two Sum - LeetCode Problem
// nums dizisinde iki elemanın toplamı target olacak şekilde indekslerini döndürür.

void main() {
  List<int> nums = [3, 7, 11, 15];
  int target = 14;

  try {
    List<int> result = twoSum(nums, target);
    print("Indices: ${result[0]}, ${result[1]}");
  } catch (e) {
    print(e);
  }
}

List<int> twoSum(List<int> nums, int target) {
  Map<int, int> numToIndex = {};

  for (int i = 0; i < nums.length; i++) {
    int complement = target - nums[i];

    if (numToIndex.containsKey(complement)) {
      return [numToIndex[complement]!, i];
    }

    numToIndex[nums[i]] = i;
  }

  throw Exception("No two sum solution");
}
