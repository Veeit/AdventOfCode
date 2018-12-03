function part1(parseInput) {
  let inputArrayFabrick = parseInput.split(/\n/);
  var VisuallArray = new String()
  var inputSet = new Set()
  for (var index in inputArrayFabrick) {
      inputSet.add(inputArrayFabrick[index].split(/(\s+)/));
      // console.log(inputArrayFabrick[index].split(/(\s+)/));
  }
  inputSet.forEach(function(index){
    console.log(index);

  })
  // console.log(inputSet);
  var maxLeft = 0
  var maxTop = 0
  var maxWidth = 0
  var maxHeight = 0
  var LengthOfMap = 0
  var HgihtOfMap = 0

  var maxArray = [[],[]];
  var overlayCounter = 0

  function findMax() {
      for (var part in inputSet) {
          //            let id = part[0]
          let leftTop = part[2].replace(":","").split(",")
          let widthHeight = part[3].split("x")
          //            print(leftTop)
          if (Int(leftTop[0]) > maxLeft) {
              maxLeft = Int(leftTop[0])
          }
          if (Int(leftTop[1]) > maxTop) {
              maxTop = Int(leftTop[1])
          }
          if (Int(widthHeight[0]) > maxWidth) {
              maxWidth = Int(widthHeight[0])
          }
          if (Int(widthHeight[1]) > maxHeight) {
              maxHeight = Int(widthHeight[1])
          }
      }
      LengthOfMap = maxWidth + maxLeft
      HgihtOfMap = maxHeight + maxTop
  }
  findMax();
  function createMaxArray() {
      //        yes I do basacley the same thing as in findMax :face_Palm:
      // maxArray = [[Int]](repeating: [Int](repeating: 0, count: maxHeight + maxLeft), count: maxTop + maxHeight)
      // maxArray = maxArray(7).fill(0);
      maxArray = new Array(maxHeight + maxLeft).fill(new Array(maxTop + maxHeight).fill(0));
      console.log(maxArray)
    }
    createMaxArray();
}

var testPart1 = `
#1 @ 1,3: 4x4
#2 @ 3,1: 4x4
#3 @ 5,5: 2x2`

part1(testPart1)
console.log(`test`)
