func getCard(at index: Int, from stack: [Int]) -> Int {
  return stack[index]
}

func withinArrayRange(of stack: [Int], at index: Int, usingFunction f: ([Int]) -> [Int]) -> [Int] {
  guard (0...stack.endIndex).contains(index) else {
    return stack
  }

  return f(stack)
}

func withinNotEmptyArray(of stack: [Int], usingFunction f: ([Int]) -> [Int]) -> [Int] {
  guard !stack.isEmpty else {
    return stack
  }

  return f(stack)
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  return withinArrayRange(of: stack, at: index, usingFunction: {
    var newStack = $0
    newStack[index] = newCard

    return newStack
  })
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
  var newStack = stack

  newStack.append(newCard)

  return newStack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
  return withinArrayRange(of: stack, at: index, usingFunction: {
    var newStack = $0

    newStack.remove(at: index)

    return newStack
  })
}

func removeTopCard(_ stack: [Int]) -> [Int] {
  return withinNotEmptyArray(of: stack, usingFunction: {
    var newStack = $0

    newStack.removeLast()

    return newStack
  })
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
  var newStack = stack
  
  newStack.insert(newCard, at: 0)
  
  return newStack
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
  return withinNotEmptyArray(of: stack, usingFunction: {
    var newStack = $0
    
    newStack.removeFirst()
    
    return newStack
  })
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  return stack.count == size
}

func evenCardCount(_ stack: [Int]) -> Int {
  return stack.filter { $0 % 2 == 0 }.count
}
