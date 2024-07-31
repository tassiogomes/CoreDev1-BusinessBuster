table 55106 "Example Table"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "FieldOne"; Text[100])
        {
            Caption = 'Field One';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                TriggerLogCodeunit.InsertLogEntry('Table Example', 'OnValidate Field One');
            end;
        }
        field(2; "FieldTwo"; Text[100])
        {
            Caption = 'Field Two';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                TriggerLogCodeunit.InsertLogEntry('Table Example', 'OnValidate Field Two');
            end;
        }
    }

    keys
    {
        key(PK; "FieldOne")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        TriggerLogCodeunit: Codeunit "TriggerLog Codeunit";
        myInt: Integer;

    trigger OnInsert()
    begin
        TriggerLogCodeunit.InsertLogEntry('Table Example', 'OnInsert');
    end;

    trigger OnModify()
    begin
        TriggerLogCodeunit.InsertLogEntry('Table Example', 'OnModify');
    end;

    trigger OnDelete()
    begin
        TriggerLogCodeunit.InsertLogEntry('Table Example', 'OnDelete');
    end;

    trigger OnRename()
    begin
        TriggerLogCodeunit.InsertLogEntry('Table Example', 'OnRename');
    end;

}