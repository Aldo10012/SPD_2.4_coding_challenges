func twoSumSorted(arr: [Int], target: Int) -> (Int, Int)? {
  var left = 0
  var right = arr.count - 1

  var solution: (Int, Int)? = nil

  while right > left {
    let sum = arr[left] + arr[right]

    if sum > target {
      right -= 1
    }
    else if sum < target {
      left += 1
    }
    else {
      solution = (left+1, right+1)
      right -= 1
      left += 1
    }
  }

  return solution

}

twoSumSorted(arr: [1, 2, 4, 7, 11], target: 9)