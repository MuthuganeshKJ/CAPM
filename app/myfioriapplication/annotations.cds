using CatalogService as service from '../../srv/CatalogService';
annotate CatalogService.POs with @(
    UI.SelectionFields : [
        PO_ID,
        PARTNER_GUID.COMPANY_NAME,
        PARTNER_GUID.ADDRESS_GUID.COUNTRY,
        GROSS_AMOUNT,
        OVERALL_STATUS
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value: PO_ID,
        },
        {
            $Type : 'UI.DataField',
            Value: PARTNER_GUID.COMPANY_NAME,
        },
        {
            $Type : 'UI.DataField',
            Value: PARTNER_GUID.BP_ID,
        },
        {
            $Type : 'UI.DataField',
            Value: PARTNER_GUID.ADDRESS_GUID.COUNTRY,
        },
        {
            $Type : 'UI.DataField',
            Value: GROSS_AMOUNT,
        },
        {
            $Type : 'UI.DataField',
            Value: CURRENCY_code,
        },
        {
            $Type : 'UI.DataField',
            Value: LifecycleStatus,
            Criticality : LSCriticality
        },
        {
            $Type : 'UI.DataField',
            Value: OverallStatus,
            Criticality : OSCriticality
        }
    ]
);
// annotate service.POs with @(
//     UI.FieldGroup #GeneratedGroup : {
//         $Type : 'UI.FieldGroupType',
//         Data : [
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'CURRENCY_code',
//                 Value : CURRENCY_code,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Value : GROSS_AMOUNT,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Value : NET_AMOUNT,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Value : TAX_AMOUNT,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'NODE_KEY',
//                 Value : NODE_KEY,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Value : PO_ID,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'PARTNER_GUID_NODE_KEY',
//                 Value : PARTNER_GUID_NODE_KEY,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Value : LIFECYCLE_STATUS,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Value : OVERALL_STATUS,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'OverallStatus',
//                 Value : OverallStatus,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'OSCriticality',
//                 Value : OSCriticality,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'LifecycleStatus',
//                 Value : LifecycleStatus,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'LSCriticality',
//                 Value : LSCriticality,
//             },
//         ],
//     },
//     UI.Facets : [
//         {
//             $Type : 'UI.ReferenceFacet',
//             ID : 'GeneratedFacet1',
//             Label : 'General Information',
//             Target : '@UI.FieldGroup#GeneratedGroup',
//         },
//     ],
//     UI.LineItem : [
//         {
//             $Type : 'UI.DataField',
//             Label : 'NODE_KEY',
//             Value : NODE_KEY,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'CURRENCY_code',
//             Value : CURRENCY_code,
//         },
//         {
//             $Type : 'UI.DataField',
//             Value : GROSS_AMOUNT,
//         },
//         {
//             $Type : 'UI.DataField',
//             Value : NET_AMOUNT,
//         },
//         {
//             $Type : 'UI.DataField',
//             Value : TAX_AMOUNT,
//         },
//     ],
// );

// annotate service.POs with {
//     PARTNER_GUID @Common.ValueList : {
//         $Type : 'Common.ValueListType',
//         CollectionPath : 'BusinessPartnerSet',
//         Parameters : [
//             {
//                 $Type : 'Common.ValueListParameterInOut',
//                 LocalDataProperty : PARTNER_GUID_NODE_KEY,
//                 ValueListProperty : 'NODE_KEY',
//             },
//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty : 'BP_ROLE',
//             },
//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty : 'EMAIL',
//             },
//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty : 'MOBILE',
//             },
//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty : 'FAX',
//             },
//         ],
//     }
// };

