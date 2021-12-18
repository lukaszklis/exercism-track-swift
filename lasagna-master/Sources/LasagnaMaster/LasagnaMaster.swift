func remainingMinutesInOven(elapsedMinutes: Int = 0, expectedMinutesInOven: Int = 40) -> Int {
  return expectedMinutesInOven - elapsedMinutes
}

func preparationTimeInMinutes(layers: String...) -> Int {
  let minutesPerLayer = 2

  return layers.count * minutesPerLayer
}

func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
  let noodlesCountPerLayer = 3
  let sauceLitersPerLayer = 0.2
  let noodleLayers = layers.filter { $0 == "noodles" }.count
  let sauceLayers = layers.filter { $0 == "sauce" }.count
  let noodleQuantity = noodleLayers * noodlesCountPerLayer
  let sauceQuantity = Double(sauceLayers) * sauceLitersPerLayer

  return (noodles: noodleQuantity, sauce: sauceQuantity)
}

func toOz(_ quantity: inout (noodles: Int, sauce: Double)) {
  quantity.sauce *= 33.814
}

func redWine(layers: String...) -> Bool {
  let whiteWineLayers = ["mozzarella", "ricotta", "béchamel"]
  let redWineLayers = ["meat", "sauce"]
  let whiteWineLayersCount = layers.filter { whiteWineLayers.contains($0) }.count
  let redWineLayersCount = layers.filter { redWineLayers.contains($0) }.count

  return redWineLayersCount >= whiteWineLayersCount
}
