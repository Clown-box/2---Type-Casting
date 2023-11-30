/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var array:[Any] = [6,"s",1.0,true]

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for i in 0..<array.count{
    if(array[i] is Int){
        print("The integer has a value of \(array[i])")
    }else if(array[i] is Bool){
        print("The Boolian has a value of \(array[i])")
    }else if(array[i] is String){
        print("The String has a value of \(array[i])")
    }else if(array[i] is Double){
        print("The Double has a value of \(array[i])")
    }
}
//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var dictionary:[String:Any] = ["1":true,"2":1,"3":2.0,"4":"string"]
print("\(dictionary)")
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total:Double = 0

for (_,value) in dictionary{
    if let value = value as? String{
        if let val:Double = value{
            total += Double(value)
        }
    }
    else if let value = value as? Bool{
        if value{
            total += 2
        } else{
            total -= 3
        }
    }
    else if let value = value as? Int{
        total += Double(value)
    }
    if let value = value as? Double{
        total += value
    }
    print(total)
}

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2:Double = 0

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
