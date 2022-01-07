import Foundation

let noChar: Character = "_"

func splitOnNewlines(_ poem: String) -> [String] {
  return poem.components(separatedBy: "\n")
}

func firstLetter(_ line: String) -> Character {
  guard let firstCharacter = line.first else { return noChar }
  
  return firstCharacter
}

func capitalize(_ phrase: String) -> String {
  return phrase.components(separatedBy: " ").map { firstLetter($0).uppercased() + $0.dropFirst(1).lowercased() }.joined(separator: " ")
}

func trimFromEnd(_ line: String) -> String {
  return line.trimmingCharacters(in: .whitespacesAndNewlines)
}

func lastLetter(_ line: String) -> Character {
  guard let lastCharacter = line.last else { return noChar }

  return lastCharacter
}

func backDoorPassword(_ phrase: String) -> String {
  return "\(capitalize(phrase)), please"
}

func ithLetter(_ line: String, i: Int) -> Character {
  guard i <= line.count - 1 else { return " " }

  return Array(line)[i]
}

func secretRoomPassword(_ phrase: String) -> String {
  return "\(phrase.uppercased())!"
}
