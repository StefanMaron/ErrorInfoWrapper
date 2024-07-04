codeunit 50101 ErrorInfoWrapperImpl
{
    Access = Internal;
    InherentEntitlements = X;
    InherentPermissions = X;

    var
        CustomErrorInfo: ErrorInfo;

    procedure Create(): Codeunit ErrorInfoWrapperImpl
    begin
        this.CustomErrorInfo := ErrorInfo.Create();
        exit(this);
    end;

    procedure Create(MessageParam: Text): Codeunit ErrorInfoWrapperImpl
    begin
        this.CustomErrorInfo := ErrorInfo.Create(MessageParam);
        exit(this);
    end;

    procedure Title(TitleParam: Text): Codeunit ErrorInfoWrapperImpl
    begin
        this.CustomErrorInfo.Title := TitleParam;
        exit(this);
    end;

    procedure Message(MessageParam: Text): Codeunit ErrorInfoWrapperImpl
    begin
        this.CustomErrorInfo.Message := MessageParam;
        exit(this);
    end;

    procedure DetailedMessage(DetailedMessageParam: Text): Codeunit ErrorInfoWrapperImpl
    begin
        this.CustomErrorInfo.DetailedMessage := DetailedMessageParam;
        exit(this);
    end;

    procedure AddCustomDimension(CustomDimensionKey: Text; CustomDimensionValue: Text): Codeunit ErrorInfoWrapperImpl
    begin
        this.CustomErrorInfo.CustomDimensions.Add(CustomDimensionKey, CustomDimensionValue);
        exit(this);
    end;

    procedure ControlName(Name: Text): Codeunit ErrorInfoWrapperImpl
    begin
        this.CustomErrorInfo.ControlName := Name;
        exit(this);
    end;

    procedure DataClassification(Classification: DataClassification): Codeunit ErrorInfoWrapperImpl
    begin
        this.CustomErrorInfo.DataClassification := Classification;
        exit(this);
    end;

    procedure AddNavigationAction(ActionCaption: Text; PageNoParam: Integer): Codeunit ErrorInfoWrapperImpl
    begin
        this.CustomErrorInfo.AddNavigationAction(ActionCaption);
        this.CustomErrorInfo.PageNo := PageNoParam;
        exit(this);
    end;

    procedure AddNavigationAction(ActionCaption: Text; PageNoParam: Integer; RecordIdParam: RecordId): Codeunit ErrorInfoWrapperImpl
    begin
        this.AddNavigationAction(ActionCaption, PageNoParam);
        this.CustomErrorInfo.RecordId := RecordIdParam;
        exit(this);
    end;

    procedure AddNavigationAction(ActionCaption: Text; PageNoParam: Integer; TableIdParam: Integer; SystemIdParam: Guid): Codeunit ErrorInfoWrapperImpl
    begin
        this.AddNavigationAction(ActionCaption, PageNoParam);
        this.CustomErrorInfo.TableId := TableIdParam;
        this.CustomErrorInfo.SystemId := SystemIdParam;
        exit(this);
    end;

    procedure PageNo(PageNoParam: Integer): Codeunit ErrorInfoWrapperImpl
    begin
        this.CustomErrorInfo.PageNo := PageNoParam;
        exit(this);
    end;

    procedure RecordId(RecordIdParam: RecordId): Codeunit ErrorInfoWrapperImpl
    begin
        this.CustomErrorInfo.RecordId := RecordIdParam;
        exit(this);
    end;

    procedure FieldNo(FieldNoParam: Integer): Codeunit ErrorInfoWrapperImpl
    begin
        this.CustomErrorInfo.FieldNo := FieldNoParam;
        exit(this);
    end;

    procedure TableId(TableIdParam: Integer): Codeunit ErrorInfoWrapperImpl
    begin
        this.CustomErrorInfo.TableId := TableIdParam;
        exit(this);
    end;

    procedure SystemId(SystemIdParam: Guid): Codeunit ErrorInfoWrapperImpl
    begin
        this.CustomErrorInfo.SystemId := SystemIdParam;
        exit(this);
    end;

    procedure AddAction(ActionCaption: Text; CodeunitId: Integer; MethodName: Text): Codeunit ErrorInfoWrapperImpl
    begin
        this.CustomErrorInfo.AddAction(ActionCaption, CodeunitId, MethodName);
        exit(this);
    end;

    procedure AddAction(ActionCaption: Text; CodeunitId: Integer; MethodName: Text; Description: Text): Codeunit ErrorInfoWrapperImpl
    begin
        this.CustomErrorInfo.AddAction(ActionCaption, CodeunitId, MethodName, Description);
        exit(this);
    end;

    procedure Collectible(CollectibleParam: Boolean): Codeunit ErrorInfoWrapperImpl
    begin
        this.CustomErrorInfo.Collectible := CollectibleParam;
        exit(this);
    end;

    procedure ErrorType(ErrorTypeParam: ErrorType): Codeunit ErrorInfoWrapperImpl
    begin
        this.CustomErrorInfo.ErrorType := ErrorTypeParam;
        exit(this);
    end;

    procedure Verbosity(VerbosityParam: Verbosity): Codeunit ErrorInfoWrapperImpl
    begin
        this.CustomErrorInfo.Verbosity := VerbosityParam;
        exit(this);
    end;

    procedure GetErrorInfo(): ErrorInfo
    begin
        exit(this.CustomErrorInfo);
    end;
}