.class public final enum Lcom/google/android/speech/RecognitionState$State;
.super Ljava/lang/Enum;
.source "RecognitionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/RecognitionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/speech/RecognitionState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/speech/RecognitionState$State;

.field public static final enum ERROR:Lcom/google/android/speech/RecognitionState$State;

.field public static final enum USE_PRIMARY:Lcom/google/android/speech/RecognitionState$State;

.field public static final enum USE_SECONDARY:Lcom/google/android/speech/RecognitionState$State;

.field public static final enum WAITING:Lcom/google/android/speech/RecognitionState$State;

.field public static final enum WAITING_SECONDARY_FAILED:Lcom/google/android/speech/RecognitionState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/google/android/speech/RecognitionState$State;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v2}, Lcom/google/android/speech/RecognitionState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/RecognitionState$State;->WAITING:Lcom/google/android/speech/RecognitionState$State;

    .line 76
    new-instance v0, Lcom/google/android/speech/RecognitionState$State;

    const-string v1, "WAITING_SECONDARY_FAILED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/speech/RecognitionState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/RecognitionState$State;->WAITING_SECONDARY_FAILED:Lcom/google/android/speech/RecognitionState$State;

    .line 77
    new-instance v0, Lcom/google/android/speech/RecognitionState$State;

    const-string v1, "USE_PRIMARY"

    invoke-direct {v0, v1, v4}, Lcom/google/android/speech/RecognitionState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/RecognitionState$State;->USE_PRIMARY:Lcom/google/android/speech/RecognitionState$State;

    .line 78
    new-instance v0, Lcom/google/android/speech/RecognitionState$State;

    const-string v1, "USE_SECONDARY"

    invoke-direct {v0, v1, v5}, Lcom/google/android/speech/RecognitionState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/RecognitionState$State;->USE_SECONDARY:Lcom/google/android/speech/RecognitionState$State;

    .line 79
    new-instance v0, Lcom/google/android/speech/RecognitionState$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/google/android/speech/RecognitionState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/RecognitionState$State;->ERROR:Lcom/google/android/speech/RecognitionState$State;

    .line 74
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/speech/RecognitionState$State;

    sget-object v1, Lcom/google/android/speech/RecognitionState$State;->WAITING:Lcom/google/android/speech/RecognitionState$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/speech/RecognitionState$State;->WAITING_SECONDARY_FAILED:Lcom/google/android/speech/RecognitionState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/speech/RecognitionState$State;->USE_PRIMARY:Lcom/google/android/speech/RecognitionState$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/speech/RecognitionState$State;->USE_SECONDARY:Lcom/google/android/speech/RecognitionState$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/speech/RecognitionState$State;->ERROR:Lcom/google/android/speech/RecognitionState$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/speech/RecognitionState$State;->$VALUES:[Lcom/google/android/speech/RecognitionState$State;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/speech/RecognitionState$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lcom/google/android/speech/RecognitionState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/RecognitionState$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/speech/RecognitionState$State;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/android/speech/RecognitionState$State;->$VALUES:[Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v0}, [Lcom/google/android/speech/RecognitionState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/speech/RecognitionState$State;

    return-object v0
.end method
