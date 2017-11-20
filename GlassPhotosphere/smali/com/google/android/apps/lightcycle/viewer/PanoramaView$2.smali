.class Lcom/google/android/apps/lightcycle/viewer/PanoramaView$2;
.super Ljava/lang/Object;
.source "PanoramaView.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->setSensorReader(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V
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
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/viewer/PanoramaView;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView$2;->this$0:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Float;)V
    .locals 1
    .param p1, "response"    # Ljava/lang/Float;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView$2;->this$0:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->requestRender()V

    .line 118
    return-void
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 114
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView$2;->onCallback(Ljava/lang/Float;)V

    return-void
.end method
