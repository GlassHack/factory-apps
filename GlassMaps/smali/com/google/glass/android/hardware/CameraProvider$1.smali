.class Lcom/google/glass/android/hardware/CameraProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# instance fields
.field final synthetic this$0:Lcom/google/glass/android/hardware/CameraProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/android/hardware/CameraProvider;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/google/glass/android/hardware/CameraProvider$1;->this$0:Lcom/google/glass/android/hardware/CameraProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/android/hardware/Camera;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/google/glass/android/hardware/CameraImpl;

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/android/hardware/CameraImpl;-><init>(Landroid/hardware/Camera;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/google/glass/android/hardware/CameraProvider$1;->get()Lcom/google/glass/android/hardware/Camera;

    move-result-object v0

    return-object v0
.end method
