package MedicalStudy;

import com.jfoenix.controls.datamodels.treetable.RecursiveTreeObject;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

/**
 *
 * @author Minal Devanand Vaity
 */
public class MuscleAnatomy extends RecursiveTreeObject<MuscleAnatomy> {

    public MuscleAnatomy() {
        super();
        // TODO Auto-generated constructor stub
    }

    StringProperty muscle_name;
    StringProperty muscle_description;
    StringProperty muscle_group;
    StringProperty muscle_main_action;
   
 
    public MuscleAnatomy(String name, String description, String group, String main_action) {
        this.muscle_name = new SimpleStringProperty(name);
        this.muscle_description = new SimpleStringProperty(description);
        this.muscle_group = new SimpleStringProperty(group);
        this.muscle_main_action = new SimpleStringProperty(main_action);
    }

}

