page 60205 "Egg Production Line List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Egg Production Line Table";
    Editable = true;
    DeleteAllowed = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Chicken No."; Rec."Chicken No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Chicken No. field.', Comment = '%';
                }
                field("Chicken Description"; Rec."Chicken Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Chicken Description field.', Comment = '%';
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                }
                field("Egg Production Date"; Rec."Egg Production Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Egg Production Date field.', Comment = '%';
                }
                field("Egg Type Code"; Rec."Egg Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Egg Type Code field.', Comment = '%';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Quantity field.', Comment = '%';
                }
            }
        }
        area(Factboxes)
        {

        }
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