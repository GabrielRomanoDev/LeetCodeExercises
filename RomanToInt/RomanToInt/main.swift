print(romanToInt("MCMXCIV"))

func romanToInt(_ s: String) -> Int {
    
    let dict:[String:Int]=["I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000]
    let array:[String]=s.map{String($0)}
    var n = s.count - 1
    var sum:Int=0
    
    repeat{
        
        let actualNumber:Int = dict[array[n]] ?? 0
        
        if n>0{
            let prevNumber:Int = dict[array[n-1]] ?? 0
            
            if actualNumber <= prevNumber{
                sum += actualNumber
                n -= 1
            } else{
                sum = sum + actualNumber - prevNumber
                n -= 2
            }
        } else {
            sum += actualNumber
            return sum
        }
        
    } while(n>=0)
    
    return sum
}

