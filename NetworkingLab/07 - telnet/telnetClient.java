import java.net.*;
import java.io.*;

class telnetClient {
	public static void main(String args[]) throws Exception {
		Socket soc = new Socket("localhost", 8088);
		String command;
		DataInputStream din = new DataInputStream(soc.getInputStream());
		DataOutputStream dout = new DataOutputStream(soc.getOutputStream());
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Welcome to Telnet Client");
		System.out.println("<Telnet Prompt>");
		command = br.readLine();
		dout.writeUTF(command);
		System.out.println(din.readLine());
		soc.close();
		din.close();
		dout.close();
		br.close();
	}
}