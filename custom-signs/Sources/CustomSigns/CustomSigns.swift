let birthday = "Birthday"
let valentine = "Valentine's Day"
let anniversary = "Anniversary"
let space: Character = " "
let exclamation: Character = "!"

func buildSign(for occasion: String, name: String) -> String {
  return "Happy\(space)\(occasion)\(space)\(name)\(exclamation)"
}

func graduationFor(name: String, year: Int) -> String {
  return "Congratulations\(space)\(name)\(exclamation)\nClass\(space)of\(space)\(year)"
}

func costOf(sign: String) -> Int {
  let basePrice = 20
  let charPrice = 2

  return basePrice + sign.count * charPrice
}
