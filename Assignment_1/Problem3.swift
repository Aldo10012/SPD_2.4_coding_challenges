func threeBiggestInArray(_ arr: [Int], max: Int) -> [Int] {
   
  var outputArr: [Int] = []
   
  for num in arr {
    if outputArr.count < max {
      outputArr.append(num)
    } else {
      // find largest value in output array
      let maxVal = outputArr.max()!
       
      // if num < largest value, drop largest value and add num
      if num < maxVal {
        for i in 0 ..< outputArr.count {
          if outputArr[i] == maxVal {
            outputArr.remove(at: i)
            outputArr.append(num)
          }
        }
      }
    }
  }
   
  print(outputArr)
  return outputArr
}

threeBiggestInArray([1, 12, 4, 7, 11], max: 2)