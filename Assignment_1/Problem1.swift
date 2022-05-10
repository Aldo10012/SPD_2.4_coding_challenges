func twoSum(arr: [Int], target: Int) -> (Int, Int)? {
  if arr.isEmpty { return nil }
  if arr.count == 1 { return nil }

  var solution: (Int, Int)? = nil

  for index1 in 0 ..< arr.count {
    for index2 in index1+1 ..< arr.count {
      if (arr[index1] + arr[index2]) == target {
        solution = (arr[index1], arr[index2])
      }
    }
  }
  print(solution)
  return solution
}

twoSum(arr: [1, 2, 3, 4, 5], target: 9)