.class Lcom/google/glass/camera/CameraManagerProvider$1;
.super Ljava/lang/Object;
.source "CameraManagerProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/CameraManagerProvider;->from(Landroid/content/Context;)Lcom/google/android/glass/media/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/android/glass/media/CameraManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/CameraManagerProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraManagerProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/CameraManagerProvider;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/glass/camera/CameraManagerProvider$1;->this$0:Lcom/google/glass/camera/CameraManagerProvider;

    iput-object p2, p0, Lcom/google/glass/camera/CameraManagerProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/android/glass/media/CameraManager;
    .locals 2

    .prologue
    .line 35
    iget-object v1, p0, Lcom/google/glass/camera/CameraManagerProvider$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/glass/media/CameraManager;->from(Landroid/content/Context;)Lcom/google/android/glass/media/CameraManager;

    move-result-object v0

    .line 36
    .local v0, "cameraManager":Lcom/google/android/glass/media/CameraManager;
    sget-object v1, Lcom/google/glass/camera/CameraClient;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/media/CameraManager;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 37
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/glass/camera/CameraManagerProvider$1;->get()Lcom/google/android/glass/media/CameraManager;

    move-result-object v0

    return-object v0
.end method
