page 60116 "Egg Production Document Page"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "Egg Production Header";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General Information';
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document Date field.', Comment = '%';
                }
            }
                part(Lines; "Egg Production Subpgage") // lines é um nome dado por nós e depois é a origem de onde vem as linhas.
                {
                    ApplicationArea = All;
                    SubPageLink = "Document No." = field("No."); // Chave da EggProductionLineTable = ao No. desse document.

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
    }

    var
        myInt: Integer;
}