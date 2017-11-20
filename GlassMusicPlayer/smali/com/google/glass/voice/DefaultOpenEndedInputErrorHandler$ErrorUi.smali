.class public final enum Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

.field public static final enum AUDIO_ERROR_RESPONSE:Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

.field public static final enum GENERIC_ERROR_RESPONSE:Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

.field public static final enum NETWORK_ERROR_RESPONSE:Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

.field public static final enum NO_MATCH_ERROR_RESPONSE:Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;


# instance fields
.field errorIconId:I

.field isNetworkError:Z

.field primaryErrorMessageId:I

.field secondaryErrorMessageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x3

    const/4 v14, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    const-string v1, "NETWORK_ERROR_RESPONSE"

    sget v3, Lcom/google/glass/common/R$string;->voice_network_connectivity:I

    sget v4, Lcom/google/glass/common/R$string;->error_tap_connection_settings:I

    sget v5, Lcom/google/glass/common/R$drawable;->ic_cloud_sad_150:I

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v0, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->NETWORK_ERROR_RESPONSE:Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    .line 19
    new-instance v4, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    const-string v5, "NO_MATCH_ERROR_RESPONSE"

    sget v7, Lcom/google/glass/common/R$string;->voice_input_no_match:I

    sget v8, Lcom/google/glass/common/R$string;->error_tap_speak_again:I

    sget v9, Lcom/google/glass/common/R$drawable;->ic_warning_150:I

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v4, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->NO_MATCH_ERROR_RESPONSE:Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    .line 21
    new-instance v7, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    const-string v8, "AUDIO_ERROR_RESPONSE"

    sget v10, Lcom/google/glass/common/R$string;->voice_input_audio_error:I

    sget v11, Lcom/google/glass/common/R$string;->error_tap_speak_again:I

    sget v12, Lcom/google/glass/common/R$drawable;->ic_warning_150:I

    move v9, v14

    move v13, v2

    invoke-direct/range {v7 .. v13}, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v7, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->AUDIO_ERROR_RESPONSE:Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    .line 23
    new-instance v7, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    const-string v8, "GENERIC_ERROR_RESPONSE"

    sget v10, Lcom/google/glass/common/R$string;->voice_input_server_error:I

    sget v11, Lcom/google/glass/common/R$string;->error_tap_speak_again:I

    sget v12, Lcom/google/glass/common/R$drawable;->ic_warning_150:I

    move v9, v15

    move v13, v2

    invoke-direct/range {v7 .. v13}, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v7, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->GENERIC_ERROR_RESPONSE:Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    sget-object v1, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->NETWORK_ERROR_RESPONSE:Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->NO_MATCH_ERROR_RESPONSE:Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->AUDIO_ERROR_RESPONSE:Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->GENERIC_ERROR_RESPONSE:Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    aput-object v1, v0, v15

    sput-object v0, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->$VALUES:[Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->primaryErrorMessageId:I

    .line 35
    iput p4, p0, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->secondaryErrorMessageId:I

    .line 36
    iput p5, p0, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->errorIconId:I

    .line 37
    iput-boolean p6, p0, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->isNetworkError:Z

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->$VALUES:[Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    invoke-virtual {v0}, [Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    return-object v0
.end method


# virtual methods
.method public final bindGlassError(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/app/GlassError;)V
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->primaryErrorMessageId:I

    invoke-virtual {p2, v0}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    .line 42
    iget v0, p0, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->secondaryErrorMessageId:I

    invoke-virtual {p2, v0}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    .line 43
    iget v0, p0, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->errorIconId:I

    invoke-virtual {p2, v0}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    .line 45
    invoke-virtual {p1, p0}, Lcom/google/glass/voice/OpenEndedInputController;->getErrorOnConfirmRunnable(Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/glass/app/GlassError;->setOnConfirmRunnable(Ljava/lang/Runnable;)Lcom/google/glass/app/GlassError;

    .line 46
    return-void
.end method
