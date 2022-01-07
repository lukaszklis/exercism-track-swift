func newScoreBoard() -> [String: Int] {
  return [String: Int]()
}

func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
  scores[name] = score
}

func removePlayer(_ scores: inout [String: Int], _ name: String) {
  scores.removeValue(forKey: name)
}

func resetScore(_ scores: inout [String: Int], _ name: String) {
  scores[name] = 0
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
  let currentValue = scores[name] ?? 0

  scores.updateValue(currentValue + delta, forKey: name)
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
  return scores.sorted(by: <)
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
  return scores.sorted { $0.1 > $1.1 }
}
