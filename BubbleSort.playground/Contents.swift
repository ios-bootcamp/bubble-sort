import UIKit

var numbers1 = (0..<10).map{ _ in Int.random(in: 1...100) }
var numbers2 = (0..<10).map{ _ in Int.random(in: 1...100) }
var temp: Int

print(numbers1)
print(numbers2)

for _ in 0..<numbers1.count {
    for (i) in (0..<numbers1.count - 1) {
        if numbers1[i] > numbers1[i+1] {
            temp = numbers1[i+1]
            numbers1[i+1] = numbers1[i]
            numbers1[i] = temp
        }
    }
}

for _ in 0..<numbers2.count {
    for (i) in (0..<numbers2.count - 1) {
        if numbers2[i] < numbers2[i+1] {
            temp = numbers2[i]
            numbers2[i] = numbers2[i+1]
            numbers2[i+1] = temp
        }
    }
}

print(numbers1)
print(numbers2)
