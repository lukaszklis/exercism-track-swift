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
  let areaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA)) ?? -1.0
  let areaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB)) ?? -1.0

  if areaA > areaB {
    return "Slice A is bigger"
  }

  if areaB > areaA {
    return "Slice B is bigger"
  }

  return "Neither slice is bigger"
}
