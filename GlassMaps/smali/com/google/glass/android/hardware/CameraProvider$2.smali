.class Lcom/google/glass/android/hardware/CameraProvider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# instance fields
.field final synthetic this$0:Lcom/google/glass/android/hardware/CameraProvider;

.field final synthetic val$camera:Landroid/hardware/Camera;


# direct methods
.method constructor <init>(Lcom/google/glass/android/hardware/CameraProvider;Landroid/hardware/Camera;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/glass/android/hardware/CameraProvider$2;->this$0:Lcom/google/glass/android/hardware/CameraProvider;

    iput-object p2, p0, Lcom/google/glass/android/hardware/CameraProvider$2;->val$camera:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/android/hardware/Camera;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/google/glass/android/hardware/CameraImpl;

    iget-object v1, p0, Lcom/google/glass/android/hardware/CameraProvider$2;->val$camera:Landroid/hardware/Camera;

    invoke-direct {v0, v1}, Lcom/google/glass/android/hardware/CameraImpl;-><init>(Landroid/hardware/Camera;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/glass/android/hardware/CameraProvider$2;->get()Lcom/google/glass/android/hardware/Camera;

    move-result-object v0

    return-object v0
.end method
