// Function defined separately
fun VariableType() {
    println("My Variable Type Function is Running")

    /*
       Example for `val` (cannot be reassigned)
    */
    val name = "John"
    println("Val example: $name")
    // name = "Robert" // This would cause an error: Val cannot be reassigned

    /*
       Example for `var` (can be reassigned)
    */
    var age = 25
    println("Var example before change: $age")

    // Reassigning a new value
    age = 30
    println("Var example after change: $age")
}
