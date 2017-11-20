.class final enum Lcom/google/glass/camera/RecordingService$RecordingState;
.super Ljava/lang/Enum;
.source "RecordingService.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/RecordingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RecordingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/camera/RecordingService$RecordingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/camera/RecordingService$RecordingState;

.field public static final enum RECORDING:Lcom/google/glass/camera/RecordingService$RecordingState;

.field public static final enum REQUESTED:Lcom/google/glass/camera/RecordingService$RecordingState;

.field public static final enum STOPPED:Lcom/google/glass/camera/RecordingService$RecordingState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 182
    new-instance v0, Lcom/google/glass/camera/RecordingService$RecordingState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/camera/RecordingService$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/camera/RecordingService$RecordingState;->STOPPED:Lcom/google/glass/camera/RecordingService$RecordingState;

    .line 184
    new-instance v0, Lcom/google/glass/camera/RecordingService$RecordingState;

    const-string v1, "REQUESTED"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/camera/RecordingService$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/camera/RecordingService$RecordingState;->REQUESTED:Lcom/google/glass/camera/RecordingService$RecordingState;

    .line 186
    new-instance v0, Lcom/google/glass/camera/RecordingService$RecordingState;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/camera/RecordingService$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/camera/RecordingService$RecordingState;->RECORDING:Lcom/google/glass/camera/RecordingService$RecordingState;

    .line 179
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/camera/RecordingService$RecordingState;

    sget-object v1, Lcom/google/glass/camera/RecordingService$RecordingState;->STOPPED:Lcom/google/glass/camera/RecordingService$RecordingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/camera/RecordingService$RecordingState;->REQUESTED:Lcom/google/glass/camera/RecordingService$RecordingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/camera/RecordingService$RecordingState;->RECORDING:Lcom/google/glass/camera/RecordingService$RecordingState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/camera/RecordingService$RecordingState;->$VALUES:[Lcom/google/glass/camera/RecordingService$RecordingState;

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
    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/camera/RecordingService$RecordingState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 179
    const-class v0, Lcom/google/glass/camera/RecordingService$RecordingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/RecordingService$RecordingState;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/camera/RecordingService$RecordingState;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/google/glass/camera/RecordingService$RecordingState;->$VALUES:[Lcom/google/glass/camera/RecordingService$RecordingState;

    invoke-virtual {v0}, [Lcom/google/glass/camera/RecordingService$RecordingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/camera/RecordingService$RecordingState;

    return-object v0
.end method
