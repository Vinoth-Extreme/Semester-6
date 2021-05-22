import java.net.*;
import java.io.*;

public class server {
	public static void main(String[] args) throws Exception {
		InetAddress san = InetAddress.getByName(null);
		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		String msg="", fn, tmp;
		System.out.println("Enter the file name: ");
		fn = in.readLine();
		File f = new File(fn);
		if(f.isFile() && f.canRead()) {
			BufferedReader fil = new BufferedReader(new FileReader(fn));
			while((tmp = fil.readLine()) != null)
				msg = msg + tmp + "\n";
		} else msg = "Error in input file";
		System.out.println(msg);
		byte data[] = new byte[msg.length()];
		msg.getBytes(0, msg.length(), data, 0);
		DatagramSocket ds = new DatagramSocket(8000);
		DatagramPacket dp = new DatagramPacket(data, data.length, san, 8001);
		ds.send(dp);
	}
}