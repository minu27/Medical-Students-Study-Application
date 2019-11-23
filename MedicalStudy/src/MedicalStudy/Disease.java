package MedicalStudy;

import com.jfoenix.controls.datamodels.treetable.RecursiveTreeObject;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

/**
 *
 * @author Minal Devanand Vaity
 */
public class Disease extends RecursiveTreeObject<Disease> {

    public Disease() {
        super();
        // TODO Auto-generated constructor stub
    }

    StringProperty disease_name;
    StringProperty disease_description;
    StringProperty disease_symptom;
    StringProperty disease_treatment;
   
 
    public Disease(String name, String description, String symptom, String treatment) {
        this.disease_name = new SimpleStringProperty(name);
        this.disease_description = new SimpleStringProperty(description);
        this.disease_symptom = new SimpleStringProperty(symptom);
        this.disease_treatment = new SimpleStringProperty(treatment);
    }

}

