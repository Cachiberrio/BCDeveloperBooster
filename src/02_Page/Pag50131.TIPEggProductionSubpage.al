page 50131 "TIP Egg Production Subpage"
{
    Caption = 'Egg Production Subpage';
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "TIP Egg Production Line";
    AutoSplitKey = true;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            field("Egg Production Date"; Rec."Egg Production Date")
            {
                ToolTip = 'Specifies the value of the Egg Production Date field.', Comment = '%';
            }
            field("Chicken No."; Rec."Chicken No.")
            {
                ToolTip = 'Specifies the value of the Chicken No. field.', Comment = '%';
            }
            field("Chicken Name"; Rec."Chicken Name")
            {
                ToolTip = 'Specifies the value of the Chicken Name field.', Comment = '%';
            }
            field("Egg Type Code"; Rec."Egg Type Code")
            {
                ToolTip = 'Specifies the value of the Egg Type Code field.', Comment = '%';
            }
            field("Egg Type Description"; Rec."Egg Type Description")
            {
                ToolTip = 'Specifies the value of the Egg Type Description field.', Comment = '%';
            }
            field(Quantity; Rec.Quantity)
            {
                ToolTip = 'Specifies the value of the Quantity field.', Comment = '%';
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}