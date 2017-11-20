.class public final enum Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;
.super Ljava/lang/Enum;
.source "BaseSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/BaseSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

.field public static final enum NETWORK_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

.field public static final enum SCAN_QR_CODE_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

.field public static final enum SETUP_FATAL_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

.field public static final enum SETUP_SIGN_IN_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

.field public static final enum SETUP_STRING_INCOMPLETE:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

.field public static final enum UPDATE_CREDENTIAL_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

.field public static final enum WIFI_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;


# instance fields
.field final errorLogCode:Ljava/lang/String;

.field final errorTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 122
    new-instance v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    const-string v1, "WIFI_ERROR"

    sget v2, Lcom/google/glass/setup/R$string;->error_message_fail_to_connect_to_network:I

    const-string v3, "w"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->WIFI_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    .line 124
    new-instance v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    const-string v1, "SETUP_STRING_INCOMPLETE"

    sget v2, Lcom/google/glass/setup/R$string;->sign_in_failed:I

    const-string v3, "s"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->SETUP_STRING_INCOMPLETE:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    .line 126
    new-instance v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    const-string v1, "SETUP_FATAL_ERROR"

    sget v2, Lcom/google/glass/setup/R$string;->sign_in_failed:I

    const-string v3, "a"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->SETUP_FATAL_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    .line 127
    new-instance v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    const-string v1, "SETUP_SIGN_IN_ERROR"

    sget v2, Lcom/google/glass/setup/R$string;->sign_in_failed:I

    const-string v3, "c"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->SETUP_SIGN_IN_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    .line 129
    new-instance v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    const-string v1, "NETWORK_ERROR"

    sget v2, Lcom/google/glass/setup/R$string;->error_message_fail_to_connect_to_network:I

    const-string v3, "n"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->NETWORK_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    .line 131
    new-instance v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    const-string v1, "UPDATE_CREDENTIAL_ERROR"

    const/4 v2, 0x5

    sget v3, Lcom/google/glass/setup/R$string;->update_credential_failed:I

    const-string v4, "r"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->UPDATE_CREDENTIAL_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    .line 133
    new-instance v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    const-string v1, "SCAN_QR_CODE_ERROR"

    const/4 v2, 0x6

    sget v3, Lcom/google/glass/setup/R$string;->error_message_qr_code_error:I

    const-string v4, "q"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->SCAN_QR_CODE_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    .line 121
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    sget-object v1, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->WIFI_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->SETUP_STRING_INCOMPLETE:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->SETUP_FATAL_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->SETUP_SIGN_IN_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->NETWORK_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->UPDATE_CREDENTIAL_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->SCAN_QR_CODE_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->$VALUES:[Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "errorTitleId"    # I
    .param p4, "errorLogCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput p3, p0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->errorTitleId:I

    .line 141
    iput-object p4, p0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->errorLogCode:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 121
    const-class v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->$VALUES:[Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    invoke-virtual {v0}, [Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    return-object v0
.end method
