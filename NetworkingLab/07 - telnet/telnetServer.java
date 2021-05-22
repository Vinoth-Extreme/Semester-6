import java.lang.*;
import java.io.*;
import java.net.*;

class telnetServer {
	public static void main(String args[]) {
	String data = "Hello client!";
	try {
		ServerSocket ss = new ServerSocket(8088);
		Socket s = ss.accept();
		System.out.println("Client Connected!");
		PrintWriter out = new PrintWriter(s.getOutputStream(), true);
		DataInputStream din = new DataInputStream(s.getInputStream());
		if(din.readUTF().equals("1")) {
			System.out.println("String:" + data );
			out.print(data);
		}
		out.close();
		s.close();
		ss.close();
		din.close();
	} catch (Exception e) {
		System.out.println("Error Vino: " + e);
	}
	}
}