// Given a sorted array of strings, write a recursive function to find the index of the first and last occurrence of a target string. If the target string is not found in the array, report that.
// Example input: instructors = [Adriana, Adriana, Alan, Alan, Alan, Alan, Alan, Braus, Braus, Braus, Braus, Dan, Dan, Dan, Dan, Dan, Dani, Dani, Jess, Meredith, Milad, Milad, Mitchell, Mitchell, Mitchell, Mitchell]
// Example execution: find_indexes(instructors, 'Braus') ⇒ (7, 10)

class Solution {

  func findIndexes(for instructor: String, from listOfInstructors: [String]) -> [Int] {
    var result = [Int]()
     
    func findIndex(_ list: [String], index: Int) {
      // base case
      if index >= listOfInstructors.count {
        return
      }
       
      if list[0] == instructor {
        result.append(index)
      }
       
      let slice = list[1..<list.count]
      let newArr = Array(slice)
       
      findIndex(newArr, index: index + 1)
    }
     
    findIndex(listOfInstructors, index: 0)
     
    return result
  }
}