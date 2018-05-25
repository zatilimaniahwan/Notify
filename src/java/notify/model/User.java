/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package notify.model;

import java.sql.Date;

/**
 *
 * @author Zatil Imani Ahwan
 */
public class User {
    private int id;
    private String matric_no;
    private String name;
    private String password;
    private String email_address;
    private int user_group;
    private int designation;
    private String updated_by;
    private Date updated_dt;
    
    public void setId(int id){
        this.id =id;
    }
    public int getId(){
        return id;
    }
    public void setMatricNo(String matric_no){
        this.matric_no=matric_no;
    }
    public String getMatricNo(){
        return matric_no;
    }
    public void setName(String name){
        this.name=name;
    }
    public String getName(){
        return name;
    }
    public void setPassword(String password){
        this.password=password;
    }
    public String getPassword(){
        return password;
    }
    public void setEmailAddress(String email_address){
        this.email_address=email_address;
    }
    public String getEmailAddress(){
        return email_address;
    }
    public void setUserGroup(int user_group){
        this.user_group = user_group;
    }
    public int getUserGroup(){
        return user_group;
    }
    public void setDesignation(int designation){
        this.designation=designation;
    }
    public int getDesignation(){
        return designation;
    }
    public void setUpdatedBy(String updated_by){
        this.updated_by = updated_by;
    }
    public String getUpdatedBy(){
        return updated_by;
    }
    public void setUpdatedDt(Date date){
        this.updated_dt= updated_dt;
    }
    public Date getUpdatedDt(){
       return updated_dt;
    }
    public String toString(){
        return "User[id="+id+",matric_no="+matric_no+",name="+name+",password="+password+",email_address="+email_address+",user_group="+user_group+"designation="+designation+",updated_by="+updated_by+",updated_dt="+updated_dt+"]";
    }


}
