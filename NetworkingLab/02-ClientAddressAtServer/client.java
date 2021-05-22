import java.net.*;
import java.io.*;
import java.util.*;

public class client {
	public static void main(String args[]) {
		Socket s;
		PrintStream ps;
		try {
			InetAddress ia = InetAddress.getLocalHost();
			s = new Socket(ia, 8020);
			ps = new PrintStream(s.getOutputStream());
			ps.println(ia);
		} catch (IOException e) {
			System.out.println(e);
		}
	}
}