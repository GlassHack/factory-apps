.class final enum Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;
.super Ljava/lang/Enum;
.source "GlassEndpointerEventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

.field public static final enum DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

.field public static final enum END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

.field public static final enum NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

.field public static final enum SPEECH_DETECTED:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    const-string v1, "NO_SPEECH_DETECTED"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    new-instance v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    const-string v1, "SPEECH_DETECTED"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    new-instance v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    const-string v1, "DELAY_END_OF_SPEECH"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    new-instance v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    const-string v1, "END_OF_SPEECH"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->$VALUES:[Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->$VALUES:[Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    invoke-virtual {v0}, [Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    return-object v0
.end method
