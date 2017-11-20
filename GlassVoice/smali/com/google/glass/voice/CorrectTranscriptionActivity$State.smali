.class final enum Lcom/google/glass/voice/CorrectTranscriptionActivity$State;
.super Ljava/lang/Enum;
.source "CorrectTranscriptionActivity.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/CorrectTranscriptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/voice/CorrectTranscriptionActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

.field public static final enum EDITING:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

.field public static final enum HOTWORD:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

.field public static final enum UNKNOWN:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->UNKNOWN:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    .line 84
    new-instance v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    const-string v1, "HOTWORD"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->HOTWORD:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    .line 85
    new-instance v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    const-string v1, "EDITING"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->EDITING:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    sget-object v1, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->UNKNOWN:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->HOTWORD:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->EDITING:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->$VALUES:[Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/CorrectTranscriptionActivity$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    const-class v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/CorrectTranscriptionActivity$State;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->$VALUES:[Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    invoke-virtual {v0}, [Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    return-object v0
.end method
