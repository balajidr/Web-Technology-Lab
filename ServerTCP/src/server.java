import java.net.*;
import java.io.*;

//import static java.lang.Integer.valueOf;

public class  server
{
    public static void main(String args[]) throws Exception
    {

        //you can take the port number from the user
        //it prevents the program to wait for the port already used and not relieved
        //String s = args[0];
        //Integer port = valueOf(s);

        ServerSocket server=new ServerSocket(4000);

        Socket sock=server.accept();
        BufferedReader inp=new BufferedReader(new InputStreamReader(sock.getInputStream()));
        PrintStream out=new PrintStream(sock.getOutputStream());
        BufferedReader yourmessage=new BufferedReader(new InputStreamReader(System.in));
        String msg;
        while (  true )
        {
            msg=inp.readLine();
            if (msg.equalsIgnoreCase("BYE"))
            {
                out.println("BYE");

                break;
            }
            System.out.print("Client : "+ msg +"\n");
            System.out.print("Server : ");
            msg=yourmessage.readLine();
            out.println(msg);
        }
        server.close();
        sock.close();
        inp.close();
        out.close();
        yourmessage.close();
    }
}
