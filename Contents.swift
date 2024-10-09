import Foundation

/*
func add (
    _ lhs : Int,
    _ rhs : Int
)-> Int{
    lhs + rhs
}
add(23, 23)*/

let add: (
    Int , Int)-> Int =
{
    (lhs: Int, rhs : Int)-> Int in
    lhs + rhs
}
add (89 , 99)


func customAdd(
    _ lhs :Int,
    _ rhs : Int,
    using function : (Int , Int)-> Int
)-> Int {
    function(lhs , rhs)
}

customAdd(23, 33, using: {
    (lhs : Int, rhs :Int
    )-> Int in
lhs + rhs
})


let ages = [22,34,53,23,12,3,56,77,23]
ages.sorted(by: {(lhs: Int, rhs:Int)-> Bool in
    rhs < lhs
})

let ages2 = [22,12,33,23,21,20,19,99,78]
ages2.sorted(by: <)


//Very complicated way to have a conclusion
func customAdd2(
    using function: (Int, Int)-> Int,
    _ lhs : Int,
    _ rhs : Int
)-> Int {
    function(lhs , rhs)
}

customAdd2(using: {(
    lhs, rhs
) in lhs + rhs
},
           87,65
)

// Easier way

func add10To(_ value :Int)-> Int{
    value + 10
}
func add20To(_ value : Int) -> Int {
    value + 20
}

func doAddition(on value : Int, using function : (Int) -> Int) -> Int{
    function(value)
}

doAddition(on: 99, using: add10To(_:))
doAddition(on: 99, using: add20To(_:))



