codeunit 50100 MyCodeunit
{
    procedure FixError(MyError: ErrorInfo)
    begin
        Message('Error fixed ' + MyError.CustomDimensions.Get('MyCustomDimension2'));
    end;
}