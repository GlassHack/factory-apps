.class Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/DeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Config"
.end annotation


# instance fields
.field public final cameraFovDegrees:F

.field public final glFovDegrees:F

.field public final glMaxFovDegrees:F

.field public final glMinFovDegrees:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "glFovDegrees"    # F
    .param p2, "glMaxFovDegrees"    # F
    .param p3, "glMinFovDegrees"    # F
    .param p4, "cameraFovDegrees"    # F

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;->glFovDegrees:F

    .line 32
    iput p2, p0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;->glMaxFovDegrees:F

    .line 33
    iput p3, p0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;->glMinFovDegrees:F

    .line 34
    iput p4, p0, Lcom/google/android/apps/lightcycle/panorama/DeviceManager$Config;->cameraFovDegrees:F

    .line 35
    return-void
.end method
