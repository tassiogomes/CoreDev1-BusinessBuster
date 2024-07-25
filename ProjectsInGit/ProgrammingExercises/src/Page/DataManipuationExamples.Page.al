page 55109 "Data Manipuation Examples"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Data Manipuation Examples';
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                // field(Name; NameSource)
                // {
                //     ApplicationArea = All;
                    
                // }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(FindSomeRecords)
            {
                    ApplicationArea = All;
                    Caption = 'Find Some Records';
                    ToolTip = 'Find Some Records';
                    Image = Find;
                    Promoted = true;
                    PromotedIsBig = true;
                
                trigger OnAction()
                var
                    Customer: Record Customer;

                begin
                    //Customer.FindFirst();
                    //Customer.FindLast();
                    Message('%1', Customer);
                    Message(Format(Customer));
                end;
            }
            action(LoopOverAllVendors)
            {
                    ApplicationArea = All;
                    Caption = 'Loop Over All Vendors';
                    ToolTip = 'Loop Over All Vendors';
                    Image = Find;
                    Promoted = true;
                    PromotedIsBig = true;;
                
                trigger OnAction()
                var
                    Vendors : Record Vendor;

                begin
                    Vendors.FindSet();
                    repeat
                        Message('%1', Vendors);
                    until Vendors.Next() = 0;
                end;
            }
            action(GetItem)
            {
                    ApplicationArea = All;
                    Caption = 'Get Item';
                    ToolTip = 'Get Item';
                    Image = Find;
                    Promoted = true;
                    PromotedIsBig = true;
                
                trigger OnAction()
                var
                    Items : Record Item;

                begin
                    if Items.Get('1900-S') then
                        Message('%1', Items);
                        Message(Format(Items));
                end;
            }
            action(GetCustomersFromAtlanta)
            {
                    ApplicationArea = All;
                    Caption = 'Get Customer From Atlanta';
                    ToolTip = 'Get Customer From Atlanta';
                    Image = Find;
                    Promoted = true;
                    PromotedIsBig = true;
                
                trigger OnAction()
                var
                    GetCustomerFromAtlanta: Record Customer;
                begin
                    GetCustomerFromAtlanta.SetFilter(City, 'Atlanta');
                    if GetCustomerFromAtlanta.FindSet() then
                        repeat
                            Message('Customer: %1, Name: %2', GetCustomerFromAtlanta."No.", GetCustomerFromAtlanta.Name);
                        until GetCustomerFromAtlanta.Next() = 0;
                end;
            }
            action(GetCustomersNotFromAtlanta)
            {
                    ApplicationArea = All;
                    Caption = 'Get Customer Not From Atlanta';
                    ToolTip = 'Get Customer Not From Atlanta';
                    Image = Find;
                    Promoted = true;
                    PromotedIsBig = true;
                
                trigger OnAction()
                var
                    GetCustomerNotFromAtlanta: Record Customer;
                begin
                    GetCustomerNotFromAtlanta.SetFilter(City, '<>Atlanta');
                    if GetCustomerNotFromAtlanta.FindSet() then
                        repeat
                            Message('Customer: %1, Name: %2', GetCustomerNotFromAtlanta."No.", GetCustomerNotFromAtlanta.Name);
                        until GetCustomerNotFromAtlanta.Next() = 0;
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}




