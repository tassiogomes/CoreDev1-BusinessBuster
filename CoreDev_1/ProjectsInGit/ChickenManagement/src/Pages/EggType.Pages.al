page 60108 "Egg Type Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Egg Type Table";
    Editable = true;                        // Impede edição direta na lista.
    InsertAllowed = true;  					// Impede inserções.
    ModifyAllowed = true;  					// Permite modificações.
    DeleteAllowed = true;  				    // Impede deleções.
    Caption = 'Egg Type';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'Egg type';
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }

            }
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
        area(Creation)
        {
            action(InsertDefaultEggTypes)
            {
                Caption = 'Insert Default Egg Types';
                ToolTip = 'Insert Default Egg Types';
                Image = Insert;
                ApplicationArea = All;

                trigger OnAction()
                var
                    EggTypeLocalRec: Record "Egg Type Table";
                    EggTypeNotEmptyErr: Label 'There are already Egg Types in the table.';
                    EggTypeCodeunit: Codeunit "Egg Type Codeunit";

                begin
                    if EggTypeLocalRec.IsEmpty() then
                    begin
                        EggTypeCodeunit.InsertEggType('ET001', 'Egg Type 1');
                        EggTypeCodeunit.InsertEggType('ET002', 'Egg Type 2');
                        EggTypeCodeunit.InsertEggType('ET003', 'Egg Type 3');
                    end
                    else
                    begin
                        Error(EggTypeNotEmptyErr);
                    end;
                end;
            }
        }
    }

    var
        myInt: Integer;
}