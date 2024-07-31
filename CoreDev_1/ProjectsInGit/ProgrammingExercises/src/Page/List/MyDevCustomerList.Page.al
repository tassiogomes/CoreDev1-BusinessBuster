page 55111 "My Dev Customer List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "My Dev Customer Table";
    CardPageId = "My Dev Customer Card";

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Find City';
                field(SearchString; SearchString)
                {
                    Caption = 'Search by City';
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                            ValidateSearchString();
                    end;
                }

            }
            repeater(DevCustomerList)
            {
                Editable = false;
                field("No."; Rec."No.")
                {
                    Caption = 'No.';
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Name';
                    ToolTip = 'Specifies the value of the Nane field.', Comment = '%';
                    ApplicationArea = All;
                }
                field(City; Rec.City)
                {
                    Caption = 'City';
                    ToolTip = 'Specifies the value of the City field.', Comment = '%';
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(CopyFromCustomer)
            {
                ApplicationArea = All;
                Caption = 'Copy From Customer';
                Image = Copy;

                trigger OnAction()
                var
                    CustomerRec: Record Customer;
                    MyDevCustomerRec: Record "My Dev Customer Table";
                begin

                    ValidateSearchString();
                    Clear(MyDevCustomerRec);
                    Clear(CustomerRec);
                    CustomerRec.SetFilter(City,'%1', SearchString);

                    if CustomerRec.FindSet() then begin
                        repeat
                            MyDevCustomerRec.Init();
                            MyDevCustomerRec."No." := CustomerRec."No.";
                            MyDevCustomerRec.Name := CustomerRec.Name;
                            MyDevCustomerRec.City := CustomerRec.City;
                            MyDevCustomerRec.Insert();
                        until CustomerRec.Next() = 0;

                    end
                    else
                        Message('No customers found with the given city filter.');
                        CurrPage.Update();
                end;
            }

            action(EmptyMyDevCustomer)
            {
                ApplicationArea = All;
                Caption = 'Empty MyDevCustomer Table';
                Image = ClearLog;

                trigger OnAction()
                var
                    MyDevCustomerRec: Record "My Dev Customer Table";
                begin
                    Clear(MyDevCustomerRec);
                    if not Confirm('Are you sure???') then
                        exit;
                    MyDevCustomerRec.DeleteAll();
                    CurrPage.Update();
                end;
            }
        }
    }

    var
        SearchString: Text;


    trigger OnOpenPage()

    begin
        Clear(SearchString);
    end;


    // Procedure
    local procedure ValidateSearchString()

    begin

        if not SearchString.Contains('*') then

            Error('Your search string should contain a *!');

    end;
}




