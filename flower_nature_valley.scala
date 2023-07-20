import scala.collection.mutable.ListBuffer

// Main class
object TheInnovationStation {
    def main(args: Array[String]): Unit = {
        val choices = ListBuffer[String]()

        // loop through the choices and add them to the list
        for (i <- 1 to 2000) {
            choices += s"choice $i"
        }
        
        // Display the choices
        choices.foreach(choice => println(s"$choice"))

        // prompt the user for their choice
        val userChoice = scala.io.StdIn.readLine("Enter your choice: ")

        // Check if the user choice is valid
        if (userChoice != null && choices.contains(userChoice)) {
            println(s"You chose: $userChoice")
        } else {
            println(s"${userChoice} is not a valid choice")
        }
    }
}