import java.net.*;
import java.io.*;

public class client {
	public static void main(String args[]) throws Exception {
		InetAddress san = InetAddress.getLocalHost();
		byte data[] = new byte[1024];
		DatagramSocket ds = new DatagramSocket(8001);
		DatagramPacket dp = new DatagramPacket(data, data.length);
		ds.receive(dp);
		String msg = new String(dp.getData(), 0, 0, dp.getLength());
		System.out.println("Received data: "+ msg);
	}
}