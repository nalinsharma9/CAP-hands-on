using CatalogService as service from '../srv/catalog-service';
using adminAuthor as author from '../srv/admin-author';
using adminBook as book from '../srv/admin-book';

annotate book.Books with @odata.draft.enabled;
annotate author.Authors with @odata.draft.enabled;


annotate service.Books with @(
    UI: {
        LineItem: [
            {Value: ID, Label: 'Book ID'},
            {Value: title, Label : 'Title'},
            {Value: stock, Label : 'Remaining Stock'}
        ],

        HeaderInfo: {
            TypeName : 'Book',
            TypeNamePlural: 'Books',
            Title : {Value : title},
            Description: {Value: ID}

        },
        FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Title',
                Value : title,
            },
            {
                 $Type : 'UI.DataField',
                Label : 'Stock',
                Value : stock,
            }
        ],
    },
    Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet2',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        }

    ]

    }
);

annotate service.Authors with @(
    UI.SelectionFields: [
        ID,
    ],
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
    UI.HeaderInfo:{
            TypeName : 'Author',
            TypeNamePlural: 'Authors',
            Title : {Value : name},
            Description: {Value: ID} ,
            ImageUrl : 'https://media.gettyimages.com/id/1195079741/photo/portrait-of-the-writer-charlotte-bront%C3%AB-1840s-private-collection-artist-anonymous.jpg?s=612x612&w=gi&k=20&c=MPlzEsK4j6Kr9jIuQT2Qy1cLQ32A0dlAm2GHCJRujeU='

    },
    UI.Facets : [
         {
            $Type : 'UI.ReferenceFacet',
            Label : 'Associated Books',
            Target : 'books/@UI.LineItem',
        },

    ]
);


annotate author.Authors with @(
    UI.SelectionFields: [
        ID,
    ],
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
    UI.HeaderInfo:{
            TypeName : 'Author',
            TypeNamePlural: 'Authors',
            Title : {Value : name},
            Description: {Value: ID} ,
            ImageUrl : 'https://media.gettyimages.com/id/1195079741/photo/portrait-of-the-writer-charlotte-bront%C3%AB-1840s-private-collection-artist-anonymous.jpg?s=612x612&w=gi&k=20&c=MPlzEsK4j6Kr9jIuQT2Qy1cLQ32A0dlAm2GHCJRujeU='

    } 
);

annotate book.Books with @(
    UI: {
        LineItem: [
            {Value: ID, Label: 'Book ID'},
            {Value: title, Label : 'Title'},
            {Value: stock, Label : 'Remaining Stock'}
        ],

        HeaderInfo: {
            TypeName : 'Book',
            TypeNamePlural: 'Books',
            Title : {Value : title},
            Description: {Value: ID}

        },
        FieldGroup #GeneratedGroup3 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Title',
                Value : title,
            },
            {
                 $Type : 'UI.DataField',
                Label : 'Stock',
                Value : stock,
            }
        ],
    },
    Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet2',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup3',
        }

    ]

    }
);
