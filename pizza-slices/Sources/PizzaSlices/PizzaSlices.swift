import Foundation

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
  guard let diameter = diameter, diameter >= 0 else { return nil }
  guard let slices = slices, slices >= 1 else { return nil }

  return pow(diameter / 2, 2) * Double.pi / Double(slices)
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
  let diameterA = Double(diameterA)
  let slicesA = Int(slicesA)
  let diameterB = Double(diameterB)
  let slicesB = Int(slicesB)
  let areaA = sliceSize(diameter: diameterA, slices: slicesA)
  let areaB = sliceSize(diameter: diameterB, slices: slicesB)

  if let unwrappedAreaA = areaA {
    if let unwrappedAreaB = areaB {
      if unwrappedAreaA > unwrappedAreaB {
        return "Slice A is bigger"
      }
    } else {
      return "Slice A is bigger"
    }
  }

  if let unwrappedAreaB = areaB {
    if let unwrappedAreaA = areaA {
      if unwrappedAreaB > unwrappedAreaA {
        return "Slice B is bigger"
      }
    } else {
      return "Slice B is bigger"
    }
  }

  return "Neither slice is bigger"
}
