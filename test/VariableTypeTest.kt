import org.junit.jupiter.api.Test
import kotlin.test.assertEquals

class VariableTypeTest {

    @Test
    fun testVarExample() {
        var number = 10
        number = 20 // var can be reassigned
        assertEquals(20, number)
    }

    @Test
    fun testValExample() {
        val name = "John"
        // val cannot be reassigned, so we test the initial value
        assertEquals("John", name)
    }
}
