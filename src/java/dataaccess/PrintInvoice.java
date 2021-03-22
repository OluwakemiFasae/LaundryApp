/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataaccess;

import com.itextpdf.text.Document;

import com.itextpdf.text.DocumentException;
import com.itextpdf.text.PageSize;

import com.itextpdf.text.Paragraph;

import com.itextpdf.text.pdf.PdfWriter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

/**
 *
 * @author OLUWAKEMI
 */
public class PrintInvoice {
   
    public void generateInvoice() throws FileNotFoundException{
        Document document = new Document(PageSize.LETTER);
      try
      {
         PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream("Test.pdf"));
         document.open();
         document.add(new Paragraph("Testing PDF "));
         document.close();
         writer.close();
      } catch (DocumentException e)
      {
         e.printStackTrace();
      } catch (FileNotFoundException e)
      {
         e.printStackTrace();
      }
   }
    }
