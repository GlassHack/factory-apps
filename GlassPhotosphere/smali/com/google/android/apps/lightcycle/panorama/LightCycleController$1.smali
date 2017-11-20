.class Lcom/google/android/apps/lightcycle/panorama/LightCycleController$1;
.super Ljava/lang/Object;
.source "LightCycleController.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleController;-><init>(Landroid/app/Activity;Lcom/google/android/apps/lightcycle/camera/CameraPreview;Lcom/google/android/apps/lightcycle/sensor/SensorReader;Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;Landroid/opengl/GLSurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$1;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public message(IFLjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # F
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 206
    if-ne p1, v3, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$1;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$000(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/MessageSender;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/MessageSender;->notifyAll(IFLjava/lang/String;)V

    .line 209
    :cond_0
    return-void
.end method
