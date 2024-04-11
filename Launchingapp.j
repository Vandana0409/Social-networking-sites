import java.io.IOException;

public class LaunchApp {
    public static void main(String[] args) {
        try {
            // Specify the path to the application executable
            String pathToApp = "C:\\Path\\To\\Your\\Application.exe";

            // Launch the application
            Process process = Runtime.getRuntime().exec(pathToApp);

            // Optionally, you can wait for the process to exit
            int exitCode = process.waitFor();
            System.out.println("Application exited with code: " + exitCode);
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
    }
}
