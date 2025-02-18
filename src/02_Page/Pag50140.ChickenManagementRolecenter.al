page 50140 "Chicken Management Rolecenter"
{
    PageType = RoleCenter;
    ApplicationArea = All;

    layout
    {
        area(RoleCenter)
        {
            part(HeadLineOrderProcessor; "Headline RC Order Processor")
            { }
            part(OverdueCustomers; "Overdue Customers")
            { }
            part(O365Activities; "O365 Activities")
            { }
        }
    }

    actions
    {
        area(Creation)
        {
            action(NewEggProduction)
            {
                Caption = 'Egg Production';
                RunObject = Page "TIP Egg Production Document";
                ApplicationArea = All;
            }
        }
        area(Sections)
        {
            group(MasterData)
            {
                action(ChickenList)
                {
                    Caption = 'Chickens';
                    RunObject = Page "TIP Chicken List";
                    ApplicationArea = All;
                }
                action(ChickenTypes)
                {
                    Caption = 'Chicken Types';
                    RunObject = Page "TIP Chicken Types";
                    ApplicationArea = All;
                }
            }
            group(Documents)
            {
                action(EggProduction)
                {
                    Caption = 'Egg Productions';
                    RunObject = Page "TIP Egg Production List";
                    ApplicationArea = All;
                }
                action(EggTypes)
                {
                    Caption = 'Egg Types';
                    RunObject = page "TIP Egg Types";
                    ApplicationArea = All;
                }
            }
        }
        area(Embedding)
        {
            action(eChickenList)
            {
                Caption = 'Chickens';
                RunObject = page "TIP Chicken List";
                ApplicationArea = All;
            }
            action(eChickenTypes)
            {
                Caption = 'Chicken Types';
                ApplicationArea = All;
                RunObject = page "TIP Chicken Types";
            }
            action(eEggProduction)
            {
                Caption = 'Egg Production';
                RunObject = page "TIP Egg Production List";
                ApplicationArea = All;
            }
            action(eEggTypes)
            {
                Caption = 'Egg Types';
                RunObject = page "TIP Egg Types";
                ApplicationArea = All;
            }
        }
    }
}