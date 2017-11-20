.class Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;
.super Ljava/lang/Object;
.source "LightCycleController.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleController;-><init>(Landroid/app/Activity;Lcom/google/android/apps/lightcycle/camera/CameraPreview;Lcom/google/android/apps/lightcycle/sensor/SensorReader;Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;Landroid/opengl/GLSurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/lightcycle/util/Callback",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Float;)V
    .locals 2
    .param p1, "velocitySquared"    # Ljava/lang/Float;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$100(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->onSensorVelocityUpdate(F)V

    .line 221
    return-void
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 216
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$2;->onCallback(Ljava/lang/Float;)V

    return-void
.end method
