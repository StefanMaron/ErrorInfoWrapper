codeunit 50101 ErrorInfoWrapper
{
#pragma warning disable AL0848
    Access = Internal;
    InherentEntitlements = X;
    InherentPermissions = X;

    /*
        Error(
            ErrorInfoWrapper
                .Title('My custom error title, from second app')
                .Message('My custom error message')
                .DetailedMessage('My custom detailed error message')
                .AddCustomDimension('MyCustomDimension', 'MyCustomValue')
                .AddCustomDimension('MyCustomDimension2', 'MyCustomValue2')
                .ControlName('MyControlName')
                .DataClassification(DataClassification::OrganizationIdentifiableInformation)
                .AddNavigationAction('Open Vendor Card', Page::"Vendor Card", Vendor.RecordId)
                .AddAction('My custom action', Codeunit::MyCodeunit, 'FixError', 'Action description')
                .GetErrorInfo()
        );
    */

    var
        this: Codeunit ErrorInfoWrapper;
        CustomErrorInfo: ErrorInfo;

    internal procedure SetCustomErrorInfo(ErrorInfoParam: ErrorInfo)
    begin
        CustomErrorInfo := ErrorInfoParam;
    end;

    procedure Create(): Codeunit ErrorInfoWrapper
    begin
        CustomErrorInfo := ErrorInfo.Create();
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure Create(MessageParam: Text): Codeunit ErrorInfoWrapper
    begin
        CustomErrorInfo := ErrorInfo.Create(MessageParam);
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure Title(TitleParam: Text): Codeunit ErrorInfoWrapper
    begin
        CustomErrorInfo.Title := TitleParam;
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure Message(MessageParam: Text): Codeunit ErrorInfoWrapper
    begin
        CustomErrorInfo.Message := MessageParam;
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure DetailedMessage(DetailedMessageParam: Text): Codeunit ErrorInfoWrapper
    begin
        CustomErrorInfo.DetailedMessage := DetailedMessageParam;
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure AddCustomDimension(CustomDimensionKey: Text; CustomDimensionValue: Text): Codeunit ErrorInfoWrapper
    begin
        CustomErrorInfo.CustomDimensions.Add(CustomDimensionKey, CustomDimensionValue);
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure ControlName(Name: Text): Codeunit ErrorInfoWrapper
    begin
        CustomErrorInfo.ControlName := Name;
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure DataClassification(Classification: DataClassification): Codeunit ErrorInfoWrapper
    begin
        CustomErrorInfo.DataClassification := Classification;
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure AddNavigationAction(ActionCaption: Text; PageNoParam: Integer): Codeunit ErrorInfoWrapper
    begin
        CustomErrorInfo.AddNavigationAction(ActionCaption);
        CustomErrorInfo.PageNo := PageNoParam;
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure AddNavigationAction(ActionCaption: Text; PageNoParam: Integer; RecordIdParam: RecordId): Codeunit ErrorInfoWrapper
    begin
        this.AddNavigationAction(ActionCaption, PageNoParam);
        CustomErrorInfo.RecordId := RecordIdParam;
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure AddNavigationAction(ActionCaption: Text; PageNoParam: Integer; TableIdParam: Integer; SystemIdParam: Guid): Codeunit ErrorInfoWrapper
    begin
        this.AddNavigationAction(ActionCaption, PageNoParam);
        CustomErrorInfo.TableId := TableIdParam;
        CustomErrorInfo.SystemId := SystemIdParam;
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure PageNo(PageNoParam: Integer): Codeunit ErrorInfoWrapper
    begin
        CustomErrorInfo.PageNo := PageNoParam;
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure RecordId(RecordIdParam: RecordId): Codeunit ErrorInfoWrapper
    begin
        CustomErrorInfo.RecordId := RecordIdParam;
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure FieldNo(FieldNoParam: Integer): Codeunit ErrorInfoWrapper
    begin
        CustomErrorInfo.FieldNo := FieldNoParam;
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure TableId(TableIdParam: Integer): Codeunit ErrorInfoWrapper
    begin
        CustomErrorInfo.TableId := TableIdParam;
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure SystemId(SystemIdParam: Guid): Codeunit ErrorInfoWrapper
    begin
        CustomErrorInfo.SystemId := SystemIdParam;
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure AddAction(ActionCaption: Text; CodeunitId: Integer; MethodName: Text): Codeunit ErrorInfoWrapper
    begin
        CustomErrorInfo.AddAction(ActionCaption, CodeunitId, MethodName);
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure AddAction(ActionCaption: Text; CodeunitId: Integer; MethodName: Text; Description: Text): Codeunit ErrorInfoWrapper
    begin
        CustomErrorInfo.AddAction(ActionCaption, CodeunitId, MethodName, Description);
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure Collectible(CollectibleParam: Boolean): Codeunit ErrorInfoWrapper
    begin
        CustomErrorInfo.Collectible := CollectibleParam;
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure ErrorType(ErrorTypeParam: ErrorType): Codeunit ErrorInfoWrapper
    begin
        CustomErrorInfo.ErrorType := ErrorTypeParam;
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure Verbosity(VerbosityParam: Verbosity): Codeunit ErrorInfoWrapper
    begin
        CustomErrorInfo.Verbosity := VerbosityParam;
        this.SetCustomErrorInfo := CustomErrorInfo;
        exit(this);
    end;

    procedure GetErrorInfo(): ErrorInfo
    begin
        exit(CustomErrorInfo);
    end;
}