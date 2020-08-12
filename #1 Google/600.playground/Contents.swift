/*
 This problem was asked by Google.

 Given a set of points (x, y) on a 2D cartesian plane, find the two closest points. For example, given the points [(1, 1), (-1, -1), (3, 4), (6, 1), (-1, -6), (-4, -3)], return [(-1, -1), (1, 1)].
 */

//Thought
/*
 loop1
    loop2
        d = getDistance
        if d < min {
            min = d
        }
 */


//Algo
//Helper
private func getDistance(cord1: (Int, Int), cord2: (Int, Int)) -> Double {
    let a = cord1.1 - cord2.1
    let b = cord2.0 - cord1.0
    let cSquare: Double = Double((a*a) + (b*b))
    return cSquare.squareRoot()
}

func getShortTestLine(a: [(Int, Int)]) -> [(Int, Int)] {
    var min = 0.0
    var c1 = (0,0)
    var c2 = (0,0)
    
    for i in 0..<a.count {
        for j in i+1..<a.count {
            let d = getDistance(cord1: a[i], cord2: a[j])
            if d < min || min == 0 {
                min = d; c1 = a[i]; c2 = a[j]
            }
        }
    }
    return [c1, c2]
}

//Test
let array =  [(1, 1), (-1, -1), (3, 4), (6, 1), (-1, -6), (-4, -3)]
let result = getShortTestLine(a: array)

print([(-1, -1), (1, 1)])
print(result)
