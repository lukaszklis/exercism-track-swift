func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let monthsLimit = 10.0
  let monthlyPayments = price / monthsLimit
  
  if monthlyPayments <= monthlyBudget {
    return "Yes! I'm getting a \(vehicle)"
  }

  if monthlyPayments <= monthlyBudget * monthsLimit {
    return "I'll have to be frugal if I want a \(vehicle)"
  }

  return "Darn! No \(vehicle) for me"
}

func licenseType(numberOfWheels wheels: Int) -> String {
  switch wheels {
  case 2...3:
    return "You will need a motorcycle license for your vehicle"
  case 4, 6:
    return "You will need an automobile license for your vehicle"
  case 18:
    return "You will need a commercial trucking license for your vehicle"
  default:
    return "We do not issue licenses for those types of vehicles"
  }
}

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
  let oldCarAge = 10

  if yearsOld >= oldCarAge {
    return 25
  }

  let minMsrp = 25_000
  let baseMsrp = msrp > minMsrp ? msrp : minMsrp
  let fee = baseMsrp - baseMsrp * yearsOld / 10

  return fee / 100
}
