table 55113 "TriggerLog Table"
{
    DataClassification = CustomerContent;
    
    fields
    {
        field(1;"Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = CustomerContent;
        }
        field(2; "Object Name"; Text[100])
        {
            Caption = 'Object Name';
            DataClassification = CustomerContent;
        }
        field(3; "Trigger Name"; Text[100])
        {
            Caption = 'Trigger Name';
            DataClassification = CustomerContent;
        }
        field(4;"TimeStampp"; DateTime)     // dois pp por ser uma palavra reservada!
        {
            Caption = 'TimeStamp';
            DataClassification = CustomerContent;
        }
    }
    
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin

    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
// Procedures





}