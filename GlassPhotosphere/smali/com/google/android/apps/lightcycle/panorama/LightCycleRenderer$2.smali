.class Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;
.super Ljava/lang/Thread;
.source "LightCycleRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->undoLastCapturedPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)V
    .locals 0

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1265
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$100(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->UndoAddImage(Z)V

    .line 1266
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$200(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->updateTargets()V

    .line 1267
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->undoAddImage()I

    move-result v0

    .line 1268
    .local v0, "index":I
    if-nez v0, :cond_0

    .line 1269
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$200(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->reset()V

    .line 1270
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$400(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->reset()V

    .line 1271
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->resetVelocityLimit()V

    .line 1272
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$502(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;Z)Z

    .line 1274
    :cond_0
    return-void
.end method
