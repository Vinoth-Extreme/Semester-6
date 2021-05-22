import java.net.*;
import java.io.*;

public class server extends Thread {
	public static void main(String[] args) throws Exception {
		ServerSocket ss = new ServerSocket(4000);
		Socket s = ss.accept();
		BufferedReader br = new BufferedReader(new InputStreamReader(s.getInputStream()));
		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		PrintWriter out = new PrintWriter(s.getOutputStream(), true);
		String str;
		try {
			while(true) {
				System.out.println("Server: ");
				str = in.readLine();
				out.println("Server: " + str);
				str = in.readLine();
				System.out.println(br.readLine());
			}
		} catch (IOException e) {
			System.out.println(e);
		}
	}
}