table 60101 "Chicken"
{
    Caption = 'Chicken';
    DataClassification = CustomerContent;


    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }

        field(2; "Description"; Text[100])      //description com ou sem aspas?
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }

        field(3; "ChickenTypeCode"; Code[20])
        {
            Caption = 'Chicken Type Code';
            DataClassification = CustomerContent;
            TableRelation = "ChickenType"."No.";  // Adiciona a relação da tabela ChickenType e a PK chamada No.
        }

        field(4; "LastDateModified"; Date)
        {
            Caption = 'Last Date Modified';
            DataClassification = CustomerContent;
        }

        field(5; "Picture"; MediaSet)
        {
            Caption = 'Picture';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Description", "ChickenTypeCode")
        {
        }
        fieldgroup(Brick; "Description", "Picture")
        {
        }
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