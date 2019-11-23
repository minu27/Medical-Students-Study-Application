package MedicalStudy;

import com.jfoenix.controls.datamodels.treetable.RecursiveTreeObject;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

/**
 *
 * @author Minal Devanand Vaity
 */
public class Drug extends RecursiveTreeObject<Drug> {

    public Drug() {
        super();
        // TODO Auto-generated constructor stub
    }

    StringProperty drug_name;
    StringProperty drug_description;
    StringProperty drug_group;
    StringProperty drug_side_effect;
   
 
    public Drug(String name, String description, String group, String side_effect) {
        this.drug_name = new SimpleStringProperty(name);
        this.drug_description = new SimpleStringProperty(description);
        this.drug_group = new SimpleStringProperty(group);
        this.drug_side_effect = new SimpleStringProperty(side_effect);
    }

}

