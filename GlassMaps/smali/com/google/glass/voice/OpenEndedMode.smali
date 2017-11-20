.class public final enum Lcom/google/glass/voice/OpenEndedMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/OpenEndedMode;

.field public static final enum DICTATION:Lcom/google/glass/voice/OpenEndedMode;

.field public static final enum EMBEDDED_ONLY:Lcom/google/glass/voice/OpenEndedMode;

.field public static final enum NAVIGATION:Lcom/google/glass/voice/OpenEndedMode;

.field public static final enum NONE:Lcom/google/glass/voice/OpenEndedMode;

.field public static final enum VOICE_SEARCH:Lcom/google/glass/voice/OpenEndedMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/google/glass/voice/OpenEndedMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/OpenEndedMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/OpenEndedMode;->NONE:Lcom/google/glass/voice/OpenEndedMode;

    new-instance v0, Lcom/google/glass/voice/OpenEndedMode;

    const-string v1, "VOICE_SEARCH"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/voice/OpenEndedMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/OpenEndedMode;->VOICE_SEARCH:Lcom/google/glass/voice/OpenEndedMode;

    new-instance v0, Lcom/google/glass/voice/OpenEndedMode;

    const-string v1, "NAVIGATION"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/voice/OpenEndedMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/OpenEndedMode;->NAVIGATION:Lcom/google/glass/voice/OpenEndedMode;

    new-instance v0, Lcom/google/glass/voice/OpenEndedMode;

    const-string v1, "DICTATION"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/voice/OpenEndedMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/OpenEndedMode;->DICTATION:Lcom/google/glass/voice/OpenEndedMode;

    .line 12
    new-instance v0, Lcom/google/glass/voice/OpenEndedMode;

    const-string v1, "EMBEDDED_ONLY"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/voice/OpenEndedMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/OpenEndedMode;->EMBEDDED_ONLY:Lcom/google/glass/voice/OpenEndedMode;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/glass/voice/OpenEndedMode;

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->NONE:Lcom/google/glass/voice/OpenEndedMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->VOICE_SEARCH:Lcom/google/glass/voice/OpenEndedMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->NAVIGATION:Lcom/google/glass/voice/OpenEndedMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->DICTATION:Lcom/google/glass/voice/OpenEndedMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->EMBEDDED_ONLY:Lcom/google/glass/voice/OpenEndedMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/glass/voice/OpenEndedMode;->$VALUES:[Lcom/google/glass/voice/OpenEndedMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/OpenEndedMode;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/google/glass/voice/OpenEndedMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/OpenEndedMode;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/OpenEndedMode;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/google/glass/voice/OpenEndedMode;->$VALUES:[Lcom/google/glass/voice/OpenEndedMode;

    invoke-virtual {v0}, [Lcom/google/glass/voice/OpenEndedMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/OpenEndedMode;

    return-object v0
.end method
