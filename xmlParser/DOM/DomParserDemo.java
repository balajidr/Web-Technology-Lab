import java.io.File;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;

public class DomParserDemo {

   public static void main(String[] args) {

      try {
         File inputFile = new File("input.xml");
         DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
         DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
         Document doc = dBuilder.parse(inputFile);
         doc.getDocumentElement().normalize();
         System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
         NodeList nList = doc.getElementsByTagName("patient");
         System.out.println("----------------------------");
         
         for (int temp = 0; temp < nList.getLength(); temp++) {
            Node nNode = nList.item(temp);
            System.out.println("\nCurrent Element :" + nNode.getNodeName());
            
            if (nNode.getNodeType() == Node.ELEMENT_NODE) {
               Element eElement = (Element) nNode;
               System.out.println("SSN :" 
                  + eElement.getElementsByTagName("ssn").item(0)
                  .getTextContent());
               System.out.println("Name :" 
                  + eElement
                  .getElementsByTagName("name")
                  .item(0)
                  .getTextContent());
               System.out.println("Phone No :" 
                  + eElement
                  .getElementsByTagName("phonenumber")
                  .item(0)
                  .getTextContent());
               System.out.println("medicalproblem :" 
                  + eElement
                  .getElementsByTagName("medicalproblem")
                  .item(0)
                  .getTextContent());
               System.out.println("drugallergies :" 
                  + eElement
                  .getElementsByTagName("drugallergies")
                  .item(0)
                  .getTextContent());
            }
         }
      } catch (Exception e) {
         e.printStackTrace();
      }
   }
}