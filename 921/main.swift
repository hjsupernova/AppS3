////연산자 예제 6
//print("초 입력: " ,terminator: "")
//let input = Int(readLine()!)!
//
//let hour = input / 3600
//let minute = (input % 3600) / 60
//let second = (input % 3600) % 60
//print("\(hour) 시 \(minute)분 \(second) 초")
//
//
////연산자 예제 7
//print("노동 시간 입력: " ,terminator: "")
//let workTime = Double(readLine()!)!
//let baseHourly: Double = 5000
//var payment: Double = 0
//
//if workTime < 8 {
//    payment = workTime * baseHourly
//
//} else {
//    let overTime = workTime - 8
//    let overtimeHourly = baseHourly * 1.5
//    let overTimePayment = overTime * overtimeHourly
//    payment = overTimePayment + (8 * baseHourly)
//}
//
//print("총 임금은 \(payment) 원 입니다.")
//
//
////연산자 예제 8
//print("정수를 입력하세요: ", terminator: "")
//var input = Int(readLine()!)!
//
//
//print(input.isMultiple(of: 2) ? "\(input)는(은) 짝수입니다." : "\(input)는(은) 홀수입니다.")
//
//
////연산자 예제 9
//print("첫 번째 정수 입력: ", terminator: "")
//let input1 = Int(readLine()!)!
//
//print("두 번째 정수 입력: ", terminator: "")
//let input2 = Int(readLine()!)!
//
//print(input1 > input2 ? "두 수의 차: \(input1 - input2)" : "두 수의 차: \(input2 - input1)" )
//
//
////연산자 예제 10
//print("농구공의 개수를 입력하세요: ", terminator: "")
//let input = Int(readLine()!)!
//var result = 0
//
//if input.isMultiple(of: 5) {
//    result = input / 5
//} else {
//    result = (input / 5) + 1
//}
//
//print("필요한 상자의 수: \(result)")
