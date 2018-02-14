import java.io.File;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class SAXParserDemo {

   public static void main(String[] args) {

      try {
         File inputFile = new File("input.xml");
         SAXParserFactory factory = SAXParserFactory.newInstance();
         SAXParser saxParser = factory.newSAXParser();
         UserHandler userhandler = new UserHandler();
         saxParser.parse(inputFile, userhandler);     
      } catch (Exception e) {
         e.printStackTrace();
      }
   }   
}

class UserHandler extends DefaultHandler {

   boolean name = false;
   boolean ssn = false;
   boolean age = false;
   boolean address = false;
   boolean phone = false;
   
   @Override
   public void startElement(
      String uri, String localName, String qName, Attributes attributes)
      throws SAXException {
      
      if (qName.equalsIgnoreCase("patient")) {
         String rollNo = attributes.getValue("ssn");
         //System.out.println("ssn : " + rollNo);
      } else if (qName.equalsIgnoreCase("name")) {
         name = true;
      } else if (qName.equalsIgnoreCase("age")) {
         age = true;
      } else if (qName.equalsIgnoreCase("phone")) {
         phone = true;
      }
      else if (qName.equalsIgnoreCase("address")) {
         address = true;
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

      if (name) {
         System.out.println("name: " + new String(ch, start, length));
         name = false;
      } else if (ssn) {
         System.out.println("ssn: " + new String(ch, start, length));
         ssn = false;
      } else if (age) {
         System.out.println("age: " + new String(ch, start, length));
         age = false;
      } else if (address) {
         System.out.println("address: " + new String(ch, start, length));
         address = false;
      }
   }
}