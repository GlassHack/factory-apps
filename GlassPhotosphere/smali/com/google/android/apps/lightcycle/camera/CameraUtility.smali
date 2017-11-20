.class public Lcom/google/android/apps/lightcycle/camera/CameraUtility;
.super Ljava/lang/Object;
.source "CameraUtility.java"


# static fields
.field private static final MAX_FRAMERATE_TIMES_1000:I = 0x9c40

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cameraSizeUtility:Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;

.field private final fieldOfView:F

.field private hasBackFacingCamera:Z

.field private final previewSize:Lcom/google/android/apps/lightcycle/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5
    .param p1, "desiredPreviewImageWidth"    # I
    .param p2, "desiredPreviewImageHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->hasBackFacingCamera:Z

    .line 31
    new-instance v2, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;

    invoke-direct {v2}, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->cameraSizeUtility:Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;

    .line 36
    invoke-static {}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;->instance()Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;->openBackCamera()Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    move-result-object v0

    .line 39
    .local v0, "camera":Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;
    if-nez v0, :cond_0

    .line 41
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->hasBackFacingCamera:Z

    .line 42
    new-instance v2, Lcom/google/android/apps/lightcycle/util/Size;

    invoke-direct {v2, v3, v3}, Lcom/google/android/apps/lightcycle/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->previewSize:Lcom/google/android/apps/lightcycle/util/Size;

    .line 43
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->fieldOfView:F

    .line 54
    :goto_0
    return-void

    .line 46
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->hasBackFacingCamera:Z

    .line 47
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getClosestPreviewSize(Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;II)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 49
    .local v1, "size":Landroid/hardware/Camera$Size;
    new-instance v2, Lcom/google/android/apps/lightcycle/util/Size;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/lightcycle/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->previewSize:Lcom/google/android/apps/lightcycle/util/Size;

    .line 50
    invoke-interface {v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->getCameraFieldOfViewDegrees(F)F

    move-result v2

    iput v2, p0, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->fieldOfView:F

    .line 52
    invoke-interface {v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->release()V

    goto :goto_0
.end method

.method private getClosestPreviewSize(Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;II)Landroid/hardware/Camera$Size;
    .locals 11
    .param p1, "camera"    # Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I

    .prologue
    .line 194
    invoke-interface {p1}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 195
    .local v6, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v8

    .line 197
    .local v8, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    mul-int v1, p2, p3

    .line 198
    .local v1, "desiredNumPixels":I
    const v0, 0x7fffffff

    .line 200
    .local v0, "bestDiff":I
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 201
    .local v5, "optimalSize":Landroid/hardware/Camera$Size;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 202
    .local v7, "size":Landroid/hardware/Camera$Size;
    iget v9, v7, Landroid/hardware/Camera$Size;->width:I

    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    mul-int v4, v9, v10

    .line 203
    .local v4, "numPixels":I
    sub-int v9, v4, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 204
    .local v2, "diff":I
    if-ge v2, v0, :cond_0

    .line 205
    move v0, v2

    .line 206
    move-object v5, v7

    goto :goto_0

    .line 209
    .end local v2    # "diff":I
    .end local v4    # "numPixels":I
    .end local v7    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    return-object v5
.end method


# virtual methods
.method public allocateBuffers(Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;Lcom/google/android/apps/lightcycle/util/Size;ILandroid/hardware/Camera$PreviewCallback;)V
    .locals 7
    .param p1, "camera"    # Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;
    .param p2, "previewSize"    # Lcom/google/android/apps/lightcycle/util/Size;
    .param p3, "numBuffers"    # I
    .param p4, "callback"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 82
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 84
    invoke-interface {p1}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 85
    .local v3, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v5

    invoke-static {v5}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41000000    # 8.0f

    div-float v1, v5, v6

    .line 88
    .local v1, "bytesPerPixel":F
    iget v5, p2, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    iget v6, p2, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 91
    .local v4, "previewFrameSizeBytes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 92
    new-array v0, v4, [B

    .line 93
    .local v0, "buffer":[B
    invoke-interface {p1, v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->addCallbackBuffer([B)V

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "buffer":[B
    :cond_0
    invoke-interface {p1, p4}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 96
    return-void
.end method

.method public getCameraSizeUtility()Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->cameraSizeUtility:Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;

    return-object v0
.end method

.method public getFieldOfView()F
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->fieldOfView:F

    return v0
.end method

.method public getFlashMode(Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;)Ljava/lang/String;
    .locals 2
    .param p1, "camera"    # Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    .prologue
    .line 160
    invoke-interface {p1}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 161
    .local v0, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 162
    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const-string v1, "off"

    .line 166
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "auto"

    goto :goto_0
.end method

.method public getFocusMode(Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;)Ljava/lang/String;
    .locals 3
    .param p1, "camera"    # Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    .prologue
    .line 138
    invoke-interface {p1}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 139
    .local v0, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 140
    const-string v1, "infinity"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    sget-object v1, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->TAG:Ljava/lang/String;

    const-string v2, "Using Focus mode infinity"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v1, "infinity"

    .line 150
    :goto_0
    return-object v1

    .line 144
    :cond_0
    const-string v1, "fixed"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    sget-object v1, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->TAG:Ljava/lang/String;

    const-string v2, "Using Focus mode fixed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v1, "fixed"

    goto :goto_0

    .line 149
    :cond_1
    sget-object v1, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->TAG:Ljava/lang/String;

    const-string v2, "Using Focus mode auto."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v1, "auto"

    goto :goto_0
.end method

.method public getPreviewSize()Lcom/google/android/apps/lightcycle/util/Size;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->previewSize:Lcom/google/android/apps/lightcycle/util/Size;

    return-object v0
.end method

.method public hasBackFacingCamera()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->hasBackFacingCamera:Z

    return v0
.end method

.method public setFrameRate(Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 106
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    .line 107
    .local v3, "rates":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 108
    const-string v4, "No suppoted frame rates returned!"

    invoke-static {v4}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v4, 0x2

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 115
    .local v0, "bestRates":[I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 116
    .local v2, "rate":[I
    aget v4, v2, v6

    aget v5, v0, v6

    if-le v4, v5, :cond_3

    aget v4, v2, v6

    const v5, 0x9c40

    if-gt v4, v5, :cond_3

    .line 117
    move-object v0, v2

    .line 121
    :cond_2
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Available rates : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :cond_3
    aget v4, v2, v6

    aget v5, v0, v6

    if-ne v4, v5, :cond_2

    aget v4, v2, v7

    aget v5, v0, v7

    if-le v4, v5, :cond_2

    .line 119
    move-object v0, v2

    goto :goto_2

    .line 125
    .end local v2    # "rate":[I
    :cond_4
    aget v4, v0, v7

    if-lez v4, :cond_0

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting frame rate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 127
    aget v4, v0, v7

    aget v5, v0, v6

    invoke-virtual {p1, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_0

    .line 114
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method
