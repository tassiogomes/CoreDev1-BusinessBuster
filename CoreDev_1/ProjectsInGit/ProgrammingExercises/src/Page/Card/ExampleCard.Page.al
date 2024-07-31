page 55114 "Example Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Example Table";
    Caption = 'Example Card Page';
    //CardPageId = "Example Card Page";
    // Editable = false;

    layout
    {
        area(Content)
        {
            group(General)
            {

                field(FieldOne; Rec.FieldOne)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Field One field.', Comment = '%';

                    trigger OnValidate()
                    begin
                        TriggerLogCodeunit.InsertLogEntry('Table Example', 'OnValidate Field One');
                    end;

                }
                field(FieldTwo; Rec.FieldTwo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Field Two field.', Comment = '%';

                    trigger OnValidate()
                    begin
                        TriggerLogCodeunit.InsertLogEntry('Table Example', 'OnValidate Field Two');
                    end;
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
    }

    // TRIGGERS PAGE

    trigger OnOpenPage()
    begin
        TriggerLogCodeunit.InsertLogEntry('Page Example Card', 'OnOpenPage');
    end;

    trigger OnClosePage()
    begin
        TriggerLogCodeunit.InsertLogEntry('Page Example Card', 'OnClosePage');
    end;

    trigger OnAfterGetRecord()
    begin
        TriggerLogCodeunit.InsertLogEntry('Page Example Card', 'OnAfterGetRecord');
    end;

    trigger OnAfterGetCurrRecord()
    begin
        TriggerLogCodeunit.InsertLogEntry('Page Example Card', 'OnAfterGetCurrRecord');
    end;

    trigger OnDeleteRecord(): Boolean
    begin
        TriggerLogCodeunit.InsertLogEntry('Page Example Card', 'OnDeleteRecord');
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        TriggerLogCodeunit.InsertLogEntry('Page Example Card', 'OnInsertRecord');
    end;

    trigger OnModifyRecord(): Boolean
    begin
        TriggerLogCodeunit.InsertLogEntry('Page Example Card', 'OnModifyRecord');
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        TriggerLogCodeunit.InsertLogEntry('Page ExampleCard', 'OnNewRecord');
    end;

    trigger OnInit()
    begin
        TriggerLogCodeunit.InsertLogEntry('Page Example Card', 'OnInit');
    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        TriggerLogCodeunit.InsertLogEntry('Page Example Card', 'OnQueryClosePage');
    end;

    trigger OnNextRecord(Steps: Integer): Integer
    begin
        TriggerLogCodeunit.InsertLogEntry('Page Example Card', 'OnNextRecord');
    end;

    var
        TriggerLogCodeunit: Codeunit "TriggerLog Codeunit";
}