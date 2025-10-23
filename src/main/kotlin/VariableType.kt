// Function defined separately
fun VariableType() {
    println("My Variable Type Function is Running")

    /*
       Example for `val` (cannot be reassigned)
       val creates a constant
    */
    val name = "John"
    println("Val example: $name")
    // name = "Robert" // Uncommenting this will cause a compile error

    /*
       Example for `var` (can be reassigned)
       var creates a variable whose value can change
    */
    var age = 25
    println("Var example before change: $age")
    age = 30
    println("Var example after change: $age")
}
