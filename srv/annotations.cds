using CatalogService as service from '../srv/catalog-service';

annotate service.Books with @(
    UpdateHidden        : false,
    DeleteHidden        : false,
    CreateHidden        : false,
    UI: {
        LineItem: [
            {Value: ID, Label: 'Book ID' },
            {Value: title, Label : 'Title'},
        ],

        HeaderInfo: {
            Title : {Value : ID},
            Description: {Value: title}

        }

    }
);

annotate service.Authors with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Name',
            Value : name,
        },
    ],
    UI.FieldGroup #GeneratedGroup2 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Name',
                Value : name,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet2',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup2',
        },
         {
            $Type : 'UI.ReferenceFacet',
            Label : 'Associated Books',
            Target : 'books/@UI.LineItem',
        },

    ]
);
