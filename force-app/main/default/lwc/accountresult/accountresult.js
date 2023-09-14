import { LightningElement,api } from 'lwc';

 

const columns = [

    {label: 'Account Name', fieldName: 'name'}

]

 

export default class Accountreschild extends LightningElement {

    @api searches = [];

    columns = columns;

}