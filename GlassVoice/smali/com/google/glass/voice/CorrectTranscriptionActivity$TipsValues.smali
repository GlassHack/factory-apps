.class final enum Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;
.super Ljava/lang/Enum;
.source "CorrectTranscriptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/CorrectTranscriptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TipsValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

.field public static final enum GONE:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

.field public static final enum SEARCH:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

.field public static final enum SPEAK:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

.field public static final enum SWIPE:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

.field public static final enum TAP:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    const-string v1, "SWIPE"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->SWIPE:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    .line 51
    new-instance v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    const-string v1, "TAP"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->TAP:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    .line 52
    new-instance v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    const-string v1, "SPEAK"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->SPEAK:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    .line 53
    new-instance v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->SEARCH:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    .line 54
    new-instance v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    const-string v1, "GONE"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->GONE:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    sget-object v1, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->SWIPE:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->TAP:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->SPEAK:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->SEARCH:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->GONE:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->$VALUES:[Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->$VALUES:[Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    invoke-virtual {v0}, [Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    return-object v0
.end method
