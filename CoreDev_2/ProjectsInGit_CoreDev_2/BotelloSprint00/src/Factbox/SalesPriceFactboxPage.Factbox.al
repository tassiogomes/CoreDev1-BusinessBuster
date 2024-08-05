page 50104 "Sales Price Factbox"
{
    Caption = 'Sales Price Factbox';
    PageType = ListPart;
    ApplicationArea = All;
    // UsageCategory = Lists; entender pq nao usar isso!
    SourceTable = "Sales Price";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Item No."; Rec."Item No.")
                {
                    Caption = 'Item No.';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the item for which the sales price is valid.';
                }
                field("Sales Code"; Rec."Sales Code")
                {
                    Caption = 'Sales Code';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code that belongs to the Sales Type.';
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    Caption = 'Unit Price';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the price of one unit of the item or resource. You can enter a price manually or have it entered according to the Price/Profit Calculation field on the related card.';
                }
                field("Minimum Quantity"; Rec."Minimum Quantity")
                {
                    Caption = 'Minimum Quantity';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the minimum sales quantity required to warrant the sales price.';
                }
                field("Unit of Measure Code"; Rec."Unit of Measure Code")
                {
                    Caption = 'Unit of Measure Code';
                    ApplicationArea = All;
                    ToolTip = 'Specifies how each unit of the item or resource is measured, such as in pieces or hours. By default, the value in the Base Unit of Measure field on the item or resource card is inserted.';
                }
            }
        }
        // area(Factboxes)
        // {

        // }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}