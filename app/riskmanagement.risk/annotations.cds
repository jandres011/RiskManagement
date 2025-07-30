using RiskManagementService as service from '../../srv/service';

annotate service.Risks with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Priority',
                Value : prio,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Impact',
                Value : impact,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Criticality',
                Value : criticality,
            },
            {
                $Type : 'UI.DataField',
                Value : supplier.BusinessPartner,
                Label : 'Business Partner ID',
            },
            {
                $Type : 'UI.DataField',
                Value : supplier.BusinessPartnerFullName,
                Label : 'Full Name',
            },
            {
                $Type : 'UI.DataField',
                Value : supplier.BusinessPartnerIsBlocked,
                Label : 'Blocked?',
            },
            {
                $Type : 'UI.DataField',
                Value : miti.ID,
                Label : 'Migration ID',
            }
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneralFacet',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Priority',
            Value : prio,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Impact',
            Value : impact,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Criticality',
            Value : criticality,
        },
        {
            $Type : 'UI.DataField',
            Value : supplier.BusinessPartner,
            Label : 'Business Partner ID',
        },
        {
            $Type : 'UI.DataField',
            Value : supplier.BusinessPartnerFullName,
            Label : 'Full Name',
        }
    ],
);

annotate service.Risks with {
    miti @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Migrations',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : miti.ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'createdAt',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'createdBy',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'description',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'owner',
            },
        ],
    }
};

annotate service.Risks with {
    supplier @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'A_BusinessPartner',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : supplier.BusinessPartner,
                    ValueListProperty : 'BusinessPartner',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'BusinessPartnerFullName',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'BusinessPartnerCategory',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'Customer',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'Supplier',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
    );
};
