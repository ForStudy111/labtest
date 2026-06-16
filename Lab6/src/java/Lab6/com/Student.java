/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Lab6.com;

/**
 *
 * @author wpy92
 */

import java.util.regex.Pattern;
import java.util.regex.Matcher;

public class Student {

    //Create attributes...
    private String stuno;
    private String name;
    private String program;
    
    private String valid;
    private String invalid = "Invalid Student ID";

    // Getter for stuno
    public String getStuno() {
        Pattern pt = Pattern.compile("[A-Z0-9]*");
        Matcher mt = pt.matcher(stuno);
        boolean bl = mt.matches();

        if (bl == true) {
            valid = stuno;
        } else {
            valid = invalid;
        }
        return valid;
    }

    // Setter with Regular Expression
    public void setStuno(String stuno) {
        this.stuno = stuno;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProgram() {
        return program;
    }

    public void setProgram(String program) {
        this.program = program;
    }
}
