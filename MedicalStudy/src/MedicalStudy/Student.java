package MedicalStudy;

import com.jfoenix.controls.datamodels.treetable.RecursiveTreeObject;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

/**
 *
 * @author Minal Devanand Vaity
 */
public class Student extends RecursiveTreeObject<Student> {

    public Student() {
        super();
        // TODO Auto-generated constructor stub
    }

    StringProperty stu_id;
    StringProperty stu_name;
    StringProperty stu_dob;
    StringProperty stu_school;
    StringProperty stu_contact;
    StringProperty stu_email;
    StringProperty stu_password;
 
    public Student(String id, String name, String dob, String school, String contact, String email, String password) {
        this.stu_id = new SimpleStringProperty(id);
        this.stu_name = new SimpleStringProperty(name);
        this.stu_dob = new SimpleStringProperty(dob);
        this.stu_school = new SimpleStringProperty(school);
        this.stu_contact = new SimpleStringProperty(contact);
        this.stu_email = new SimpleStringProperty(email);
        this.stu_password = new SimpleStringProperty(password);
    }

}
