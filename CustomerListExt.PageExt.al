namespace DefaultPublisher.ErrorInfoWrapper;

using Microsoft.Sales.Customer;
using Microsoft.Purchases.Vendor;

pageextension 50100 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    begin
        RaiseSomeCustomErrorWithCodeunit();
    end;

    local procedure RaiseSomeCustomErrorWithCodeunit()
    var
        Vendor: Record "Vendor";
        ErrorInfoWrapper: Codeunit ErrorInfoWrapper;
    begin
#pragma warning disable LC0048
        Vendor.Get('40000');

        Error(
            ErrorInfoWrapper
                .Title('My custom error title, from second app')
                .Message('My custom error message')
                .DetailedMessage('My custom detailed error message')
                .ControlName('MyControlName')
                .DataClassification(DataClassification::OrganizationIdentifiableInformation)
                .AddCustomDimension('MyCustomDimension', 'MyCustomValue')
                .GetErrorInfo()
        );
    end;

    local procedure RaiseSomeCustomError()
    var
        MyError: ErrorInfo;
        CustomDimensions: Dictionary of [Text, Text];
        Vendor: Record "Vendor";
    begin
        MyError.Message := 'My custom error message';
        CustomDimensions.Add('MyCustomDimension', 'MyCustomValue');
        CustomDimensions.Add('MyCustomDimension2', 'MyCustomValue2');
        MyError.CustomDimensions(CustomDimensions);
        MyError.DetailedMessage := 'My custom detailed error message';
        MyError.ControlName := 'MyControlName';
        MyError.DataClassification := DataClassification::OrganizationIdentifiableInformation;
        MyError.Title := 'My custom error title';

        MyError.AddNavigationAction('Open Vendor Card');
        MyError.PageNo := Page::"Vendor Card";

        Vendor.Get('40000');
        MyError.RecordId := Vendor.RecordId;
        MyError.FieldNo := Vendor.FieldNo("Base Calendar Code");

        MyError.AddAction('My custom action', Codeunit::MyCodeunit, 'FixError', 'Action description');

        Error(MyError);
    end;
}