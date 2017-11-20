.class public final enum Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;
.super Ljava/lang/Enum;
.source "BaseTakePictureActivity.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/BaseTakePictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "CameraState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

.field public static final enum CAPTURING_PICTURE:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

.field public static final enum IDLE:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

.field public static final enum PREVIEWING:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    new-instance v0, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->IDLE:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    .line 136
    new-instance v0, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    const-string v1, "PREVIEWING"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->PREVIEWING:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    .line 141
    new-instance v0, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    const-string v1, "CAPTURING_PICTURE"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->CAPTURING_PICTURE:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    .line 131
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    sget-object v1, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->IDLE:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->PREVIEWING:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->CAPTURING_PICTURE:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->$VALUES:[Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

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
    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 131
    const-class v0, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->$VALUES:[Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    invoke-virtual {v0}, [Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    return-object v0
.end method
