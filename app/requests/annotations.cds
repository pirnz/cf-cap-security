using ApiService as service from '../../srv/schema';

annotate service.Requests with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : createdBy,
        },
        {
            $Type : 'UI.DataField',
            Value : createdAt,
        },
        {
            $Type : 'UI.DataField',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Value : firstname,
        },
        {
            $Type : 'UI.DataField',
            Value : lastname,
        },
        {
            $Type : 'UI.DataField',
            Value : email,
            ![@HTML5.CssDefaults] : {width : 'auto'}
        }
    ],
    UI.SelectionFields : [
        createdBy
    ]
);
annotate service.Requests with @(
    UI.HeaderInfo : {
        TypeName : 'Request',
        TypeNamePlural : 'Requests',
        ImageUrl : 'cloud',
        Title : {
            $Type : 'UI.DataField',
            Value : title
        },
        Description : {
            $Type : 'UI.DataField',
            Value : createdBy
        }
    },
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : title
            },
            {
                $Type : 'UI.DataField',
                Value : comment,
            },
            {
                $Type : 'UI.DataField',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Value : firstname,
            },
            {
                $Type : 'UI.DataField',
                Value : lastname,
            }
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        }
    ]
);