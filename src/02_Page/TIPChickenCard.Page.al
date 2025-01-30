page 50101 "TIP Chicken Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "TIP Chicken";
    Caption = 'Chicken Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(BithDate; Rec.BithDate)
                {
                    ToolTip = 'Specifies the value of the Birthdate field.', Comment = '%';
                }
                field(Gender; Rec.Gender)
                {
                    ToolTip = 'Specifies the value of the Gender field.', Comment = '%';
                }
            }
            group(Additional)
            {

                field(Blocked; Rec.Blocked)
                {
                    ToolTip = 'Specifies the value of the Blocked field.', Comment = '%';
                }
                field(ChickenTypeCode; Rec.ChickenTypeCode)
                {
                    ToolTip = 'Specifies the value of the Chicken Type Code field.', Comment = '%';
                }
                field(Image; Rec.Image)
                {
                    ToolTip = 'Specifies the value of the Image field.', Comment = '%';
                }
            }
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

    var
        myInt: Integer;
}