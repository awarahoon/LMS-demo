import { LightningElement } from 'lwc';
import getActData from '@salesforce/apex/SearchAccount.getAllAccount'
export default class Searchaccount extends LightningElement {
accountname;
accountphone;
billingcity;
billingstreet;
billingstate;
billingzipcode;
handleonchangename(event){
    this.accountname = event.target.value;
}
handleonchangephone(event){
    this.accountphone = event.target.value;
}
handleonchangecity(event){
    this.billingcity = event.target.value;
}
handleonchangestreet(event){
    this.billingstreet = event.target.value;
}
handleonchangestate(event){
    this.billingstate = event.target.value;
}
handleonchangezipcode(event){
    this.billingzipcode = event.target.value;
} 

searchaccount(event){
    alert(this.accountname);
    getActData({actname:this.accountname}).
    then(result=>{this.dispatchEvent(new CustomEvent('mycustevt',{detail:result}))}).
    catch(error=>{console.log(error)});
}

}