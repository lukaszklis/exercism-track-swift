let dailyHourlyRate = 8

let billableDays = 22

func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(dailyHourlyRate * hourlyRate)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let monthlyRate = Double(billableDays) * Double(dailyHourlyRate) * Double(hourlyRate) * (100.0 - discount) / 100
  return monthlyRate.rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let workdays = budget * (100.0 + discount) / 100 / dailyRateFrom(hourlyRate: hourlyRate)
  return workdays.rounded()
}
