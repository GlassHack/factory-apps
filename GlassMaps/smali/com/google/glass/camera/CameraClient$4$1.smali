.class Lcom/google/glass/camera/CameraClient$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/google/glass/camera/CameraClient$4;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient$4;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$4$1;->this$1:Lcom/google/glass/camera/CameraClient$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 511
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/camera/CameraClient$4$1$1;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/CameraClient$4$1$1;-><init>(Lcom/google/glass/camera/CameraClient$4$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 517
    return-void
.end method
