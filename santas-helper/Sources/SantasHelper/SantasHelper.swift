import Foundation

func cartesianToPolar(_ cart: (x: Double, y: Double)) -> (r: Double, phi: Double) {
  let (x, y) = cart
  let r = sqrt(pow(x, 2) + pow(y, 2))
  let phi = atan2(y, x)

  return (r, phi)
}

func combineRecords(
  production: (toy: String, id: Int, productLead: String),
  gifts: (Int, [String])
) -> (id: Int, toy: String, productLead: String, recipients: [String]) {
  let (toy, id, productLead) = production
  let (_, recipients) = gifts

  return (id, toy, productLead, recipients)
}
