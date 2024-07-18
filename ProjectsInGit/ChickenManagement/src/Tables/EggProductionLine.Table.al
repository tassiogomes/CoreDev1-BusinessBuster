table 60112 "Egg Production Line Table"
{
    Caption = 'Egg Production Line Table';
    DataClassification = CustomerContent;
    DrillDownPageId = "Egg Production Line List";

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(3; "Chicken No."; Code[20])
        {
            Caption = 'Chicken No.';
            DataClassification = CustomerContent;
            TableRelation = "Chicken Table"."No.";
        }
        field(4; "Chicken Description"; Text[100])
        {
            Caption = 'Chicken Description';
            FieldClass = FlowField;
            CalcFormula = lookup("Chicken Table".Description where("No." = field("Chicken No.")));  // (tabela chicken = field(nome do campo aqui nesse arquivo))
            Editable = false;                                                               // Sempre que usar flowfield, colocar editable = false
        }
        field(5; "Egg Production Date"; Date)
        {
            Caption = 'Egg Production Date';
            DataClassification = CustomerContent;
        }
        field(6; "Egg Type Code"; Code[20])
        {
            Caption = 'Egg Type Code';
            DataClassification = CustomerContent;
            TableRelation = "Egg Type Table";
        }
        field(7; "Egg Type Description"; Text[100])
        {
            Caption = 'Egg Type Description';
            FieldClass = FlowField;
            CalcFormula = lookup("Egg Type Table".Description where("No." = field("Egg Type Description")));
            Editable = false;                                                               // Sempre que usar flowfield, colocar editable = false
        }
        field(8; "Quantity"; Decimal)
        {
            Caption = ' Quantity';
            DataClassification = CustomerContent;
            DecimalPlaces = 2 : 0;
        }
    }

    keys
    {
        key(PK; "Document No.", "Line No.")          // Primary Key
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

}