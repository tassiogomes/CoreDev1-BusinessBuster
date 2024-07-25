page 55112 "My Dev Customer Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "My Dev Customer Table";
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Nane field.', Comment = '%';
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the City field.', Comment = '%';
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(DeleteAllRecords)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                var
                    TriggerLogCodeunit : Codeunit "TriggerLog Codeunit";
                begin
                    TriggerLogCodeunit.ClearLogEntries();
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}