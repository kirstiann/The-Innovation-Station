public class InnovationStation {

    private static final String DEFAULT_MESSAGE = "Welcome to the Innovation Station!";
    
    public static void main(String[] args) {
        System.out.println(DEFAULT_MESSAGE);
        UserInput input = new UserInput();
        input.promptUserInput();
        UtilityMethods util = new UtilityMethods();
        util.displayOutputsFromInputs(input);
    }
    
    static class UserInput {
    
        String[] userInputs = new String[3];
    
        public void promptUserInput() {
            System.out.println("Enter your name: ");
            userInputs[0] = System.console().readLine();
            System.out.println("Enter your age: ");
            userInputs[1] = System.console().readLine();
            System.out.println("Enter your location: ");
            userInputs[2] = System.console().readLine();
        }
        
        public String[] getUserInputs() {
            return userInputs;
        }
    }
    
    static class UtilityMethods {
    
        public void displayOutputsFromInputs(UserInput input) {
            System.out.println("You said your name is " + input.getUserInputs()[0]);
            System.out.println("You said your age is " + input.getUserInputs()[1]);
            System.out.println("You said your location is " + input.getUserInputs()[2]);
        }
    }

}