table 60101 "Chicken Table"
{
    Caption = 'Chicken';
    DataClassification = CustomerContent;
    DrillDownPageId = "Chicken Card";
    LookupPageId = "Chicken Card";


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
            TableRelation = "Chicken Type Table"."No.";  // Adiciona a relação da tabela ChickenType e a PK chamada No.
            trigger OnValidate()
            begin
                CalcFields(ChickenTypeDescription)
            end;
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
        field(6; "ChickenTypeDescription"; Text[100])
        {
            Caption = 'Chicken Type Description FlowField';             // Define a legenda do campo
            Editable = false;                                           // Define o campo como não editável, pois é um FlowField
            FieldClass = FlowField;
            CalcFormula = lookup("Chicken Type Table".Description 
                                                        where("No." = field("ChickenTypeCode"))); //compara o número de identificação ("No.") do tipo de frango do registro atual (field("No.")) com o número de identificação ("No.") do tipo de frango na tabela ChickenType.
        }
        field(7; "Number of Egg Produced"; Decimal)
        {
            Caption = 'Number of Egg Produced';
            FieldClass = FlowField;
            CalcFormula = sum("Egg Production Line Table".Quantity
                                                                    where(
                                                                        "Chicken No." = field("No."),
                                                                        "Egg Production Date" = field("Date Filter"),
                                                                        "Egg Type Code" = field("Egg Type Filter")));
        }
        field(8; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(9; "Egg Type Filter"; Code[20])
        {
            Caption = 'Egg Type Filter';
            FieldClass = FlowFilter;
            TableRelation = "Egg Type Table";
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
        ChickenTableCodeunit: Codeunit "Chicken Table Codeunit";

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin
        ChickenTableCodeunit.DeletionLogic();
    end;

    trigger OnRename()
    begin

    end;

}
