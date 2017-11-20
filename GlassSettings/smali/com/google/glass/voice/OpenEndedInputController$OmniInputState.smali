.class final enum Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;
.super Ljava/lang/Enum;
.source "OpenEndedInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/OpenEndedInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OmniInputState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

.field public static final enum DISPLAYING_THUMBNAIL:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

.field public static final enum FINISHED_DISPLAYING_THUMBNAIL:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

.field public static final enum PROCESSING_PHOTO:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

.field public static final enum READY_FOR_CAMERA_BUTTON:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 519
    new-instance v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    const-string v1, "READY_FOR_CAMERA_BUTTON"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->READY_FOR_CAMERA_BUTTON:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    .line 521
    new-instance v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    const-string v1, "PROCESSING_PHOTO"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->PROCESSING_PHOTO:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    .line 523
    new-instance v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    const-string v1, "DISPLAYING_THUMBNAIL"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->DISPLAYING_THUMBNAIL:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    .line 525
    new-instance v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    const-string v1, "FINISHED_DISPLAYING_THUMBNAIL"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->FINISHED_DISPLAYING_THUMBNAIL:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    .line 517
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    sget-object v1, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->READY_FOR_CAMERA_BUTTON:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->PROCESSING_PHOTO:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->DISPLAYING_THUMBNAIL:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->FINISHED_DISPLAYING_THUMBNAIL:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->$VALUES:[Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

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
    .line 517
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 517
    const-class v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;
    .locals 1

    .prologue
    .line 517
    sget-object v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->$VALUES:[Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    invoke-virtual {v0}, [Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    return-object v0
.end method
