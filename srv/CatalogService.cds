using { com.tcs.sd.soa.db as db } from '../db/datamodel';
using { com.tcs.sd.soa.cds as cds } from '../db/CDSView';
service CatalogService @(path: 'CatalogService') {
 
//  entity <service_entity> as projection on <databse_entity>
// Priority - 1 : Capabilities / Authorization
// Priority - 2 : Validation(pre-checks)
 
    @Capabilities : { Insertable, Deletable : false }
    entity BusinessPartnerSet as projection on db.master.businesspartner;
 
    @insertonly @readonly
    entity AddressSet as projection on db.master.address;
 
    entity EmployeeSet as projection on db.master.employees;
    entity PurchaseOrderItems as projection on db.transaction.poitems;
    entity POs as projection on db.transaction.purchaseorder{
        *,
        case OVERALL_STATUS
            when 'P' then 'Paid'
            when 'N' then 'New'
            when 'D' then 'Delivered'
            when 'R' then 'Returned'
            when 'C' then 'Cancelled'
        end as OverallStatus : String,
        case OVERALL_STATUS
            when 'P' then 3
            when 'N' then 2
            when 'D' then 3
            when 'R' then 1
            when 'C' then 1
        end as OSCriticality : Integer,
        case LIFECYCLE_STATUS
            when 'P' then 'Pending'
            when 'N' then 'New'
            when 'A' then 'Approved'
            when 'R' then 'Rejected'
        end as LifecycleStatus : String,
        case LIFECYCLE_STATUS
            when 'P' then 3
            when 'N' then 2
            when 'A' then 3
            when 'R' then 1
        end as LSCriticality : Integer,
        Items: redirected to PurchaseOrderItems
    } actions {
        // Instance bounded action
        action discountOnPrice();
        // Instance bounded function
        function biggestOrder(name2: String, name1: String) returns array of  POs;
    };
 
    // Declaration of normal function
    function getAllEmployees() returns array of EmployeeSet;
 
    // Function with Parameters
    function getEmployee(name : String) returns array of EmployeeSet;
 
    // Action with Parameters
    action updateSalaryOfEmployee(name : String) returns array of EmployeeSet;
 
}