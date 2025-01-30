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
        field(7; "Image"; MediaSet)
        {
            Caption = 'Image';
            DataClassification = CustomerContent;
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
        fieldgroup(Brick; Description, Image)
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