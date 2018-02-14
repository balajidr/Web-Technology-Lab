import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class UserHandler extends DefaultHandler {

   boolean name = false;
   boolean ssn = false;
   boolean age = false;
   boolean address = false;
   boolean phone = false;

   @Override
   public void startElement(String uri, 
   String localName, String qName, Attributes attributes) throws SAXException {

      if (qName.equalsIgnoreCase("patient")) {
         String rollNo = attributes.getValue("ssn");
         //System.out.println("ssn : " + rollNo);
      } else if (qName.equalsIgnoreCase("name")) {
         name = true;
      } else if (qName.equalsIgnoreCase("age")) {
         age = true;
      } else if (qName.equalsIgnoreCase("address")) {
         address = true;
      }
      else if (qName.equalsIgnoreCase("phone")) {
         phone = true;
      }
   }

   @Override
   public void endElement(String uri, 
   String localName, String qName) throws SAXException {
      if (qName.equalsIgnoreCase("patient")) {
         System.out.println("End Element :" + qName);
      }
   }

   @Override
   public void characters(char ch[], int start, int length) throws SAXException {
      
      if (bFirstName) {
         System.out.println("Name: " 
            + new String(ch, start, length));
         name = false;
      } else if (age) {
         System.out.println("Age: " + new String(ch, start, length));
         age = false;
      } else if (phone) {
         System.out.println("Phone: " + new String(ch, start, length));
         phone = false;
      } else if (address) {
         System.out.println("Address: " + new String(ch, start, length));
         address = false;
      }
   }
}