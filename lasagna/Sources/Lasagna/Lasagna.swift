let expectedMinutesInOven = 40

func remainingMinutesInOven(elapsedMinutes: Int) -> Int {
    return expectedMinutesInOven - elapsedMinutes
}

func preparationTimeInMinutes(layers: Int) -> Int {
    let timePerLayer = 2
    return layers * timePerLayer
}

func totalTimeInMinutes(layers: Int, elapsedMinutes: Int) -> Int {
    return elapsedMinutes + preparationTimeInMinutes(layers: layers)
}
