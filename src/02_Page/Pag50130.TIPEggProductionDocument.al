page 50130 "TIP Egg Production Document"
{
    Caption = 'Egg Production Document';
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "TIP Egg Production Header";

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
                field("Posting Date"; Rec."Posting Date")
                {
                    ToolTip = 'Specifies the value of the Posting Date field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
            }
            part(Lines; "TIP Egg Production Subpage")
            {
                ApplicationArea = All;
                Editable = true;
                Enabled = true;
                SubPageLink = "Document No." = field("No.");
                UpdatePropagation = Both;
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