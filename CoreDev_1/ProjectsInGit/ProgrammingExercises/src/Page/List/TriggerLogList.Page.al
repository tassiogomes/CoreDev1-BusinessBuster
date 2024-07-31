page 55105 "TriggerLog List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "TriggerLog Table";
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry No. field.', Comment = '%';
                }
                field("Object Name"; Rec."Object Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Object Name field.', Comment = '%';
                }
                field("Trigger Name"; Rec."Trigger Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Trigger Name field.', Comment = '%';
                }
                field(TimeStampp; Rec.TimeStampp)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TimeStamp field.', Comment = '%';
                }
            }
        }
        area(Factboxes)
        {
            
        }
    }
    
    actions
    {
        area(Navigation)
        {
            action(DeleteLogEntries)
            {
                ApplicationArea = All;
                Caption = 'Delete Log Entries';
                ToolTip = 'Deletes all log entries.';
                Image = ClearLog;
                Promoted = true;
                
                trigger OnAction()
                begin
                    TriggerLogCodeunit.ClearLogEntries();
                end;
            }
        }
    }

    var
        TriggerLogCodeunit: Codeunit "TriggerLog Codeunit";

}