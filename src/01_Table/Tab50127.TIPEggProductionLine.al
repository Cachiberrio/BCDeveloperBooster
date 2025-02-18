table 50127 "TIP Egg Production Line"
{
    DataClassification = CustomerContent;
    DrillDownPageId = "TIP Egg Production Lines";

    fields
    {
        field(1; "Document No."; code[20])
        {
            Caption = 'Document No.';
            DataClassification = ToBeClassified;
            TableRelation = "TIP Egg Production Header";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No';
            DataClassification = ToBeClassified;
        }
        field(3; "Chicken No."; Code[20])
        {
            Caption = 'Chicken No.';
            DataClassification = CustomerContent;
            TableRelation = "TIP Chicken";
        }
        field(4; "Chicken Name"; Text[100])
        {
            Caption = 'Chicken Name';
            DataClassification = CustomerContent;
        }
        field(5; "Egg Type Code"; Code[20])
        {
            Caption = 'Egg Type Code';
            DataClassification = CustomerContent;
            TableRelation = "TIP Egg Type";
        }
        field(6; Quantity; Decimal)
        {
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 0;
            MinValue = 0;
        }
        field(7; "Egg Type Description"; Text[100])
        {
            Caption = 'Egg Type Description';
            FieldClass = FlowField;
            CalcFormula = lookup("TIP Egg Type".Description where(Code = field("Egg Type Code")));
        }

        field(8; "Egg Production Date"; Date)
        {
            Caption = 'Egg Production Date';
            DataClassification = CustomerContent;
        }

    }

    keys
    {
        key(PK; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }

}