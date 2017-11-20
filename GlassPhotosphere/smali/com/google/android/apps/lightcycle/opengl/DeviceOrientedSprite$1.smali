.class Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite$1;
.super Ljava/lang/Object;
.source "DeviceOrientedSprite.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite$SpritePosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setPositions(Landroid/graphics/PointF;Landroid/graphics/PointF;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

.field final synthetic val$pos1:Landroid/graphics/PointF;

.field final synthetic val$pos2:Landroid/graphics/PointF;

.field final synthetic val$pos3:Landroid/graphics/PointF;

.field final synthetic val$pos4:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite$1;->this$0:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite$1;->val$pos1:Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite$1;->val$pos2:Landroid/graphics/PointF;

    iput-object p4, p0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite$1;->val$pos3:Landroid/graphics/PointF;

    iput-object p5, p0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite$1;->val$pos4:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPosition(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;)Landroid/graphics/PointF;
    .locals 3
    .param p1, "deviceOrientation"    # Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;

    .prologue
    .line 90
    iget v0, p1, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;->nearestOrthoAngleDegrees:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite$1;->val$pos1:Landroid/graphics/PointF;

    .line 97
    :goto_0
    return-object v0

    .line 92
    :cond_0
    iget v0, p1, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;->nearestOrthoAngleDegrees:F

    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite$1;->val$pos2:Landroid/graphics/PointF;

    goto :goto_0

    .line 94
    :cond_1
    iget v0, p1, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;->nearestOrthoAngleDegrees:F

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite$1;->val$pos3:Landroid/graphics/PointF;

    goto :goto_0

    .line 96
    :cond_2
    iget v0, p1, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;->nearestOrthoAngleDegrees:F

    const/high16 v1, -0x3d4c0000    # -90.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite$1;->val$pos4:Landroid/graphics/PointF;

    goto :goto_0

    .line 99
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid nearestOrthoAngleDegrees: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;->nearestOrthoAngleDegrees:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
