/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author OLUWAKEMI
 */
public class Town {
    int townId;
    String townName;
    int stateId;

    public Town(int townId, String name, int stateId) {
        this.townId = townId;
        this.townName = name;
        this.stateId = stateId;
    }

    public int getTownId() {
        return townId;
    }

    public void setTownId(int townId) {
        this.townId = townId;
    }

    public String getTownName() {
        return townName;
    }

    public void setTownName(String name) {
        this.townName = name;
    }

    public int getStateId() {
        return stateId;
    }

    public void setStateId(int stateId) {
        this.stateId = stateId;
    }
    
    
}
