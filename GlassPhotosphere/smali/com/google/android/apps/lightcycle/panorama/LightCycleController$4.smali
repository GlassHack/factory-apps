.class Lcom/google/android/apps/lightcycle/panorama/LightCycleController$4;
.super Landroid/os/AsyncTask;
.source "LightCycleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->startPreview(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

.field final synthetic val$waiter:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$4;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$4;->val$waiter:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 388
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$4;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/camera/CameraPreview;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$4;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/camera/CameraPreview;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/lightcycle/camera/CameraPreview;->startPreview()V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$4;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$202(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Z)Z

    .line 397
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$4;->val$waiter:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 398
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$4;->val$waiter:Ljava/lang/Object;

    monitor-enter v1

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$4;->val$waiter:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 400
    monitor-exit v1

    .line 402
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
