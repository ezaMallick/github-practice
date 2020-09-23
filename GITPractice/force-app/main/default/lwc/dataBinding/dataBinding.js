import { LightningElement } from 'lwc';

export default class DataBinding extends LightningElement {
    firstName='';
    lastName='';
    
    handleChange(event){
        const field=event.target.name;
        if(field=='firstname'){
            this.firstName=event.target.value;
        }
        else if(field=='lastname'){
            this.lastName=event.target.value;
        }   
    }

    //getter properties
    get uppercasedFullName(){
        return `${this.firstName} ${this.lastName}`.toUpperCase();
    }
}