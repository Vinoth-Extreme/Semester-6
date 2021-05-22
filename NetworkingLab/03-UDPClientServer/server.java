import java.net.*;
import java.io.*;

public class server {
	public static int client = 789;
	public static int server = 790;
	public static void main(String args[]) throws IOException {
		String s;
		InetAddress ia = InetAddress.getLocalHost();
		BufferedReader dis = new BufferedReader(new InputStreamReader(System.in));
		DatagramSocket ds = new DatagramSocket(server);
		byte b[] = new byte[1024];
		System.out.println("sending...");
		System.out.println("\n"+ ia);
		while(true) {
			s = dis.readLine();
			if(s.equals("end")) {
				b = s.getBytes();
				DatagramPacket dp = new DatagramPacket(b, s.length(), ia, client);
				ds.send(dp);
				break;
			} else {
				b = s.getBytes();
				DatagramPacket dp = new DatagramPacket(b, s.length(), ia, client);
				ds.send(dp);
			}
		}
	}
}