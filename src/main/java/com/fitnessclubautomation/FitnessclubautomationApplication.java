package com.fitnessclubautomation;

import com.fitnessclubautomation.model.Admin;
import com.fitnessclubautomation.repository.AdminRepository;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import java.awt.*;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

@SpringBootApplication
public class FitnessclubautomationApplication {

    public static void main(String[] args) {
        try {
            ApplicationContext context = SpringApplication.run(FitnessclubautomationApplication.class, args);
        
        } catch (Exception ex) {
            System.out.println("ERROR - " + ex.getMessage());
        }
    }

    private static void openHomePage() {
        try {
            URI homepage = new URI("http://localhost:8086/");
            if (Desktop.isDesktopSupported()) {
                Desktop desktop = Desktop.getDesktop();
                try {
                    desktop.browse(homepage);
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            } else {
                Runtime runtime = Runtime.getRuntime();
                try {
                    runtime.exec("xdg-open " + homepage);
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    System.out.println(e.getMessage());
                }
            }
        } catch (URISyntaxException e) {
            e.printStackTrace();
        }
    }

}
