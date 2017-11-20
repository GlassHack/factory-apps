.class public final enum Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

.field public static final enum ACTION_RESPONSE:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

.field public static final enum CORRECTION_STARTED:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

.field public static final enum DONE:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

.field public static final enum ERROR:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

.field public static final enum FINAL_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

.field public static final enum HTML_ANSWER_CARD_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

.field public static final enum LISTENING:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

.field public static final enum NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

.field public static final enum RECOGNITION_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

.field public static final enum RECOGNIZED_TEXT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

.field public static final enum RECOGNIZING:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

.field public static final enum RECORDING:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->DONE:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    .line 25
    new-instance v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    const-string v1, "LISTENING"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->LISTENING:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    .line 28
    new-instance v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->RECORDING:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    .line 31
    new-instance v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    const-string v1, "RECOGNIZING"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->RECOGNIZING:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    .line 34
    new-instance v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    const-string v1, "NO_SPEECH_DETECTED"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    .line 37
    new-instance v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    const-string v1, "RECOGNIZED_TEXT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->RECOGNIZED_TEXT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    .line 40
    new-instance v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    const-string v1, "RECOGNITION_RESULT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->RECOGNITION_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    .line 46
    new-instance v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    const-string v1, "FINAL_RESULT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->FINAL_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    .line 49
    new-instance v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    const-string v1, "HTML_ANSWER_CARD_RESULT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->HTML_ANSWER_CARD_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    .line 52
    new-instance v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    const-string v1, "ACTION_RESPONSE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ACTION_RESPONSE:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    .line 55
    new-instance v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    const-string v1, "ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ERROR:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    .line 58
    new-instance v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    const-string v1, "CORRECTION_STARTED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->CORRECTION_STARTED:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    .line 20
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->DONE:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->LISTENING:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->RECORDING:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->RECOGNIZING:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->RECOGNIZED_TEXT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->RECOGNITION_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->FINAL_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->HTML_ANSWER_CARD_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ACTION_RESPONSE:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ERROR:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->CORRECTION_STARTED:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->$VALUES:[Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->$VALUES:[Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-virtual {v0}, [Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    return-object v0
.end method
