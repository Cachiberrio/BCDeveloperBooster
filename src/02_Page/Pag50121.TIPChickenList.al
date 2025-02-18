page 50121 "TIP Chicken List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "TIP Chicken";
    Caption = 'Chicken List';
    CardPageId = "TIP Chicken Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(ChickenTypeCode; Rec.ChickenTypeCode)
                {
                    ToolTip = 'Specifies the value of the Gender field.', Comment = '%';
                }
                field("Produced Eggs"; Rec."Produced Eggs")
                {
                    ToolTip = 'Specifies the value of the Produced Eggs field.', Comment = '%';
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
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }
}