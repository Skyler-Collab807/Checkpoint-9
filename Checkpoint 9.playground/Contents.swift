import Cocoa
// MULTIPLE LINES (IF let)

func randomNumIfLet(nums: [Int]?) -> Int {
    if let number = nums?.randomElement() {
        return number
    }
    return Int.random(in: 1...100)
}
print(randomNumIfLet(nums: []))
print(randomNumIfLet(nums: [1, 2]))

// MULTIPLE LINES (GUARD)
func randomNumGuard(nums: [Int]?) -> Int {
    guard let number = nums?.randomElement() else {
        return Int.random(in:1...100)
    }
    return number
}

print(randomNumGuard(nums: []))
print(randomNumGuard(nums: [1, 2]))

// SINGLE LINE (Nil Coalescing)
func randomnumSingle(nums: [Int]?) -> Int {nums?.randomElement() ??
Int.random(in: 1...100)}

print(randomnumSingle(nums: []))
print(randomnumSingle(nums: [1, 2]))
