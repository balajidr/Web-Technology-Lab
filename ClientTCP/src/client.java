import java.net.*;
import java.io.*;

//import static java.lang.Integer.valueOf;

public class  client
{
    public static void main(String args[]) throws Exception
    {

        //you can take the port number from the user
        //it prevents the program to wait for the port already used and not relieved

        //you can also take the host address from the user as it can allow chatting from different machine in
        //in the same network

        //String host=args[0];
        //String s=args[1];
        //Integer port=valueOf(s);


        Socket sock=new Socket("127.0.0.1",4000);
        BufferedReader inp=new BufferedReader(new InputStreamReader(sock.getInputStream()));
        PrintStream out=new PrintStream(sock.getOutputStream());
        BufferedReader yourmessage=new BufferedReader(new InputStreamReader(System.in));
        String msg;
        while (  true )
        {
            System.out.print("Client : ");
            msg=yourmessage.readLine();
            out.println(msg);
            msg=inp.readLine();
            System.out.print("Server : "+ msg +"\n");
            if ( msg.equalsIgnoreCase("BYE") )
                break;
        }
        sock.close();
        inp.close();
        out.close();
        yourmessage.close();
    }
}
