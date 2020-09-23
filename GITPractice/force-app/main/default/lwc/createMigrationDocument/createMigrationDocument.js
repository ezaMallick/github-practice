import { LightningElement,wire,track } from 'lwc';
import getApexClasses from '@salesforce/apex/SmartMigrationCreatorClass.getApexClasses';

export default class CreateMigrationDocument extends LightningElement {
    @wire(getApexClasses) apexclasses;

    handleClick(event){
        console.log('value***'+JSON.stringify(this.apexclasses));
    }

}