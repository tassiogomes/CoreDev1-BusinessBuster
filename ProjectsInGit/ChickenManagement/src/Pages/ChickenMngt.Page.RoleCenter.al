page 60150 "Chicken Management Rolecenter"
{
    Caption = 'Chicken Management Rolecenter';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part(HeadLineOrderProcessor; "Headline RC Order Processor")
            {
                Caption = 'Headline RC Order Processor';
                ApplicationArea = All;
            }
            part(OverdueCustomers; "Overdue Customers")
            {
                Caption = 'Overdue Customers';
                ApplicationArea = All;
            }
            part(O365Activities; "O365 Activities")
            {
                Caption = 'O365 Activities';
                ApplicationArea = All;
            }

        }
    }

    actions
    {
        area(Sections)
        {
            group(Masterdata)
            {
                Caption = 'Master Data';
                Image = RegisteredDocs;

                action(ChickenList)
                {
                    Caption = 'Chicken List';
                    RunObject = page "Chicken List";
                    ApplicationArea = All;

                }
                action(ChickenType)
                {
                    Caption = 'Chicken Type';
                    RunObject = page "Chicken Type Page";
                    ApplicationArea = All;
                }
                group(Documents)
                {
                    action(EggProduction)
                    {
                        Caption = 'Chicken Production';
                        RunObject = page "Egg Production List Page";
                        ApplicationArea = All;

                    }
                    action(EggType)
                    {
                        Caption = 'Chicken Type';
                        RunObject = page "Egg Type Page";
                        ApplicationArea = All;


                    }
                }
            }
        }
        area(Embedding)
        {

            action(eChickenList)
            {
                Caption = 'Chicken List';
                RunObject = page "Chicken List";
                ApplicationArea = All;
            }
            action(eChickenTypes)
            {
                Caption = 'Chicken Type';
                RunObject = page "Chicken Type Page";
                ApplicationArea = All;

            }
            action(eEggProduction)
            {
                Caption = 'Chicken Production';
                RunObject = page "Egg Production List Page";
                ApplicationArea = All;
            }
            action(eEggType)
            {
                Caption = 'Chicken Type';
                RunObject = page "Egg Type Page";
                ApplicationArea = All;

            }
        }
    }
}