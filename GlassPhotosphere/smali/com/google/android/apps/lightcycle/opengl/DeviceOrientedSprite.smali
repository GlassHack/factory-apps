.class public Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;
.super Lcom/google/android/apps/lightcycle/opengl/Sprite;
.source "DeviceOrientedSprite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite$SpritePosition;
    }
.end annotation


# instance fields
.field final landscapePos:Landroid/graphics/PointF;

.field final landscapePosReverse:Landroid/graphics/PointF;

.field private orientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

.field final portraitPos:Landroid/graphics/PointF;

.field final portraitPosReverse:Landroid/graphics/PointF;

.field private position:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite$SpritePosition;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V
    .locals 1
    .param p1, "orientationDetector"    # Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->landscapePos:Landroid/graphics/PointF;

    .line 32
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->portraitPos:Landroid/graphics/PointF;

    .line 33
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->landscapePosReverse:Landroid/graphics/PointF;

    .line 34
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->portraitPosReverse:Landroid/graphics/PointF;

    .line 42
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->orientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .line 43
    return-void
.end method

.method public static create2dScaled(Landroid/content/Context;IFIIIFFLcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # I
    .param p2, "pctWidth"    # F
    .param p3, "surfaceWidth"    # I
    .param p4, "surfaceHeight"    # I
    .param p5, "depth"    # I
    .param p6, "landscapeHeightPct"    # F
    .param p7, "portraitHeightPct"    # F
    .param p8, "orientationDetector"    # Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .prologue
    .line 208
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->computeScale(Landroid/content/Context;IFI)F

    move-result v5

    .line 209
    .local v5, "scale":F
    new-instance v1, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    move-object/from16 v0, p8

    invoke-direct {v1, v0}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;-><init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    .line 210
    .local v1, "sprite":Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;
    int-to-float v4, p5

    move-object v2, p0

    move v3, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move v8, p3

    move v9, p4

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->initCentered(Landroid/content/Context;IFFFFII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    const/4 v1, 0x0

    .line 214
    .end local v1    # "sprite":Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;
    :cond_0
    return-object v1
.end method

.method public static create2dScaled(Landroid/graphics/Bitmap;FIIIFFLcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "pctWidth"    # F
    .param p2, "surfaceWidth"    # I
    .param p3, "surfaceHeight"    # I
    .param p4, "depth"    # I
    .param p5, "landscapeHeightPct"    # F
    .param p6, "portraitHeightPct"    # F
    .param p7, "orientationDetector"    # Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .prologue
    .line 241
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->computeScale(Landroid/graphics/Bitmap;FI)F

    move-result v3

    .line 242
    .local v3, "scale":F
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-direct {v0, p7}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;-><init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    .line 243
    .local v0, "sprite":Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;
    int-to-float v2, p4

    move-object v1, p0

    move v4, p5

    move v5, p6

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->initCentered(Landroid/graphics/Bitmap;FFFFII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const/4 v0, 0x0

    .line 247
    .end local v0    # "sprite":Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public draw([F)V
    .locals 8
    .param p1, "transform"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->orientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->getOrientation()Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;

    move-result-object v6

    .line 176
    .local v6, "deviceOrientation":Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->position:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite$SpritePosition;

    invoke-interface {v0, v6}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite$SpritePosition;->getPosition(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;)Landroid/graphics/PointF;

    move-result-object v7

    .line 177
    .local v7, "drawPosition":Landroid/graphics/PointF;
    iget v2, v7, Landroid/graphics/PointF;->x:F

    iget v3, v7, Landroid/graphics/PointF;->y:F

    iget v0, v6, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;->nearestOrthoAngleDegrees:F

    neg-float v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->drawRotated([FFFFF)V

    .line 179
    return-void
.end method

.method public getPosition()Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->position:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite$SpritePosition;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->orientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->getOrientation()Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite$SpritePosition;->getPosition(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public initCentered(Landroid/content/Context;IFFFFII)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # I
    .param p3, "depth"    # F
    .param p4, "scale"    # F
    .param p5, "landscapeHeightPct"    # F
    .param p6, "portraitHeightPct"    # F
    .param p7, "surfaceWidth"    # I
    .param p8, "surfaceHeight"    # I

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->init2D(Landroid/content/Context;IFF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    .line 130
    :cond_0
    invoke-virtual {p0, p5, p6, p7, p8}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setPositionsCentered(FFII)V

    .line 132
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initCentered(Landroid/graphics/Bitmap;FFFFII)Z
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "depth"    # F
    .param p3, "scale"    # F
    .param p4, "landscapeHeightPct"    # F
    .param p5, "portraitHeightPct"    # F
    .param p6, "surfaceWidth"    # I
    .param p7, "surfaceHeight"    # I

    .prologue
    .line 154
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->init2D(Landroid/graphics/Bitmap;FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 161
    :goto_0
    return v0

    .line 159
    :cond_0
    invoke-virtual {p0, p4, p5, p6, p7}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setPositionsCentered(FFII)V

    .line 161
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPositions(Landroid/graphics/PointF;Landroid/graphics/PointF;II)V
    .locals 7
    .param p1, "landscapePosition"    # Landroid/graphics/PointF;
    .param p2, "portraitPosition"    # Landroid/graphics/PointF;
    .param p3, "surfaceWidth"    # I
    .param p4, "surfaceHeight"    # I

    .prologue
    .line 79
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 80
    .local v2, "pos1":Landroid/graphics/PointF;
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 81
    .local v3, "pos2":Landroid/graphics/PointF;
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    .line 82
    .local v4, "pos3":Landroid/graphics/PointF;
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 83
    .local v5, "pos4":Landroid/graphics/PointF;
    invoke-virtual {v2, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 84
    invoke-virtual {v3, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 85
    int-to-float v0, p3

    iget v1, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    int-to-float v1, p4

    iget v6, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v6

    invoke-virtual {v4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 86
    int-to-float v0, p3

    iget v1, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    int-to-float v1, p4

    iget v6, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v6

    invoke-virtual {v5, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 87
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite$1;-><init>(Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->position:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite$SpritePosition;

    .line 103
    return-void
.end method

.method public setPositionsCentered(FFII)V
    .locals 4
    .param p1, "landscapeHeightPct"    # F
    .param p2, "portraitHeightPct"    # F
    .param p3, "surfaceWidth"    # I
    .param p4, "surfaceHeight"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 58
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, p3

    mul-float/2addr v1, p1

    int-to-float v2, p4

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p3

    div-float/2addr v2, v3

    int-to-float v3, p4

    mul-float/2addr v3, p2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setPositions(Landroid/graphics/PointF;Landroid/graphics/PointF;II)V

    .line 62
    return-void
.end method
