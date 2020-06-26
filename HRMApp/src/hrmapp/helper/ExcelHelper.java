/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hrmapp.helper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Vector;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author dangm
 */
public class ExcelHelper {

    public static void export(Vector<String> columnNames, Vector<Vector<String>> data, String path) throws IOException {
        XSSFWorkbook workbook = new XSSFWorkbook();
        XSSFSheet sheet = workbook.createSheet();

        int rowIndex = 0;
        Row row;
        Cell cell;
        row = sheet.createRow(rowIndex);
        int headerIndex = 0;
        for (String name : columnNames) {
            cell = row.createCell(headerIndex, CellType.STRING);
            cell.setCellValue(name);
            headerIndex++;
        }

        for (Vector<String> item : data) {
            rowIndex++;
            row = sheet.createRow(rowIndex);
            int columnIndex = 0;
            for (String value : item) {
                cell = row.createCell(columnIndex, CellType.STRING);
                cell.setCellValue(value);
                columnIndex++;
            }
        }

        File file = new File(path);
        OutputStream stream = new FileOutputStream(file);
        file.mkdirs();
        workbook.write(stream);
        workbook.close();
        stream.close();
        System.out.println("created success: " + file.getAbsolutePath());
    }

}
