func problem4(a: [Int], b: [Int], target: Int) -> [(Int, Int)]? {
  if a.isEmpty || b.isEmpty { return nil}
   
  var results: [(Int, Int, Int)]? = []
  var smallestDifferenceFound: Int = a[0] + b[0]
   
  for num1 in a {
    for num2 in b {
      let sum = num1 + num2
      let dif: Int = abs(target - sum)
       
      if dif < smallestDifferenceFound {
        smallestDifferenceFound = dif
      }
       
      if dif == smallestDifferenceFound {
        results?.append((num1, num2, dif))
      }
    }
  }
   
  var finalResults: [(Int, Int)]? = []
   
  for collestion in results! {
    if collestion.2 == smallestDifferenceFound {
      finalResults?.append((collestion.0, collestion.1))
    }
  }
   
  print(finalResults)
  return finalResults
}

// O(n^2)
problem4(
    a: [9, 13, 1, 8, 12, 4, 0, 5],
    b: [3, 17, 4, 14, 6],
    target: 20
)
