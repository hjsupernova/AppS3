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
//
//print(type(of: input))
//var result = 0
//
//if input.isMultiple(of: 5) {
//    result = input / 5
//} else {
//    result = (input / 5) + 1
//}
//
//print("필요한 상자의 수: \(result)")


//MARK: - 조건문 시작




////조건문 예제 01
//let age: Int
//age = Int(readLine()!)!
//if age >= 20 {
//    print("성인입니다.")
//}

//조건문 예제2
//let num: Int
//num = Int(readLine()!)!
//
//if num.isMultiple(of: 3) && num.isMultiple(of: 5) {
//    print("3과 5의 배수입니다.")
//}

////조건문 예제 3
//let grade: Int
//grade = Int(readLine()!)!
//if grade >= 60 {
//    print("합격입니다.")
//} else {
//    print("불합격입니다.")
//}
//

////조건문 예제 4
//let input: Int
//input = Int(readLine()!)!
//if input > 0 {
//    print("\(input) 양수입니다.")
//} else if input < 0 {
//    print("\(input) 음수입니다.")
//} else {
//    print("0입니다.")
//}


////조건문 예제 5
//let input1: Int
//input1 = Int(readLine()!)!
//let input2: Int
//input2 = Int(readLine()!)!
//
//if input1 > input2 {
//    print(input1)
//} else if input1 == input2 {
//    print("두 수가 같습니다.")
//} else {
//    print(input2)
//}

////조건문 예제 6
//let subjects = ["소프트웨어 설계", "소프트웨어 개발", "데이터베이스 구축", "프로그래밍 언어 활용", "정보시스템 구축관리"]
//var scores = [Int]()
//var cnt = 1
//var sum = 0
//
//for subject in subjects {
//    print("\(cnt)과목 \(subject): ", terminator: "")
//    let score = Int(readLine()!)!
//
//    scores.append(score)
//    cnt += 1
//}
//
//func checkScores(_ scores: [Int]) {
//    //과락 확인
//    for score in scores {
//        if score < 8 {
//            print("불합격입니다!")
//            return
//        }
//        sum += score
//    }
//
//    //과락 X -> 총점 확인
//    if sum >= 60 {
//        print("합격입니다!")
//    } else {
//        print("불합격입니다!")
//    }
//}
//
//checkScores(scores)



//let menu = [800, 500, 1500]
//var change = 0
//
//print("금액을 입력하세요.")
//let money = Int(readLine()!)!
//
//print("메뉴를 고르세요")
//print("1.콜라(800원) 2.생수(500원) 3.비타민워터(1500원) : ", terminator: "")
//let choice = Int(readLine()!)! - 1
//
//if menu[choice] >= money {
//    change = money
//    print("돈이 부족해요ㅠㅠ")
//    print("잔돈: \(change)원")
//} else {
//    change = money - menu[choice]
//    print("잔돈: \(change)")
//    print("천원: \(change / 1000)개, 오백원: \(change % 1000 / 500)개, 백원: \(change % 1000 % 500 / 100)개")
//}


// while 예제 1
//while true  {
//    print("정수 입력: ", terminator: "")
//    let num = Int(readLine()!)!
//    if num >= 10 {
//        print("종료되었습니다.")
//        break
//    }
//}


// while 예제2
//func getInput(_ message: String) -> Int {
//    print("\(message)", terminator: "")
//    let num = Int(readLine()!)!
//    return num
//}
//var now = getInput("현재 몸무게: ")
//let goal = getInput("목표 몸무게: ")
//var cnt = 1
//while now > goal {
//    let step = getInput("\(cnt)주차 감량 몸무게: ")
//    now -= step
//    cnt += 1
//}
//print("\(now)kg 달성! 축하합니다!!")

//// while 예제 3~5
func getInput<T>(_ message: String) -> T {

    print("\(message)", terminator: "")
    let input = readLine()!

    if T.self == String.self {
        return input as! T
    } else {
        return Int(input)! as! T
    }

}
//
//let userID = "Hello"
//let password = 1234
//var inputId: String
//var inputPassword: Int
//
//while true {
//    inputId = getInput("아이디를 입력해 주세요: ")
//    inputPassword = getInput("비밀번호를 입력해주세요: ")
//
//    if userID != inputId || password != inputPassword {
//        print("아이디와 비밀번호가 잘못되었습니다.")
//        let choice: String = getInput("계속 하시겠습니까? (Y/N): ")
//        if choice.uppercased() == "N" {
//            print("종료되었습니다.")
//            break
//        }
//    } else {
//        print("로그인 성공!")
//        print("종료되었습니다.")
//        break
//    }
//}

// while 예제 6
while true {
    let num1: Int = getInput("첫 번째 정수를 입력하세요: ")
    let num2: Int = getInput("두 번째 정수를 입력하세요: ")
    
    let operate: Int = getInput("1. 더하기 2.빼기 : ")
    
    if operate == 1 {
        print("더하기 연산 결과는 \(num1 + num2)입니다.")
        let choice: String = getInput("다시 실행 하시겠습니까? (Y/N): ")
        if choice.uppercased() == "N" {
            print("종료되었습니다.")
            break
        }
    } else {
        print("빼기 연산 결과는 \(num1 - num2)입니다.")
        let choice: String = getInput("다시 실행 하시겠습니까? (Y/N): ")
        if choice.uppercased() == "N" {
            print("종료되었습니다.")
            break
        }
    }
}
