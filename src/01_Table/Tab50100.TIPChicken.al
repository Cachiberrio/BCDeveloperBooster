table 50100 "TIP Chicken"
{
    Caption = 'Chicken';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
            trigger OnValidate()
            begin
                CalcFields(ChickenTypeDescription);
            end;
        }
        field(2; Description; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(3; ChickenTypeCode; code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Chicken Type Code';
            TableRelation = "TIP Chicken Type";
        }
        field(9; "ChickenTypeDescription"; Text[100])
        {
            Caption = 'Chicken Type Description';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup("TIP Chicken Type".Description where(Code = field(ChickenTypeCode)));
        }

        field(4; BithDate; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Birthdate';
        }
        field(5; Blocked; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Blocked';
        }
        field(6; Gender; Option)
        {
            DataClassification = CustomerContent;
            Caption = 'Gender';
            OptionMembers = " ","Male","Female";
        }
        field(7; "Picture"; MediaSet)
        {
            Caption = 'Picture';
            DataClassification = CustomerContent;
        }
        field(8; "Last Date Modified"; Date)
        {
            DataClassification = CustomerContent;
        }
        field(10; "Date Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
        field(11; "Egg Type Filter"; code[20])
        {
            FieldClass = FlowFilter;
        }
        field(12; "Produced Eggs"; Decimal)
        {
            Caption = 'Produced Eggs';
            DecimalPlaces = 0 : 0;
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("TIP Egg Production Line".Quantity where("Chicken No." = field("No."), "Egg Type Code" = field("Egg Type Filter")));
        }

    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Description, ChickenTypeCode)
        {
        }
        fieldgroup(Brick; Description, Picture)
        {
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}