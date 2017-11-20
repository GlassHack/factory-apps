.class final enum Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;
.super Ljava/lang/Enum;
.source "DefaultEndpointerEventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

.field public static final enum DELAY_END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

.field public static final enum END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

.field public static final enum NO_SPEECH_DETECTED:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

.field public static final enum SPEECH_DETECTED:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    const-string v1, "NO_SPEECH_DETECTED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    .line 20
    new-instance v0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    const-string v1, "SPEECH_DETECTED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    .line 21
    new-instance v0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    const-string v1, "DELAY_END_OF_SPEECH"

    invoke-direct {v0, v1, v4}, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    .line 22
    new-instance v0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    const-string v1, "END_OF_SPEECH"

    invoke-direct {v0, v1, v5}, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    sget-object v1, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->$VALUES:[Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->$VALUES:[Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v0}, [Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    return-object v0
.end method
