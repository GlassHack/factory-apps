.class public Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;
.super Landroid/app/Activity;
.source "PhotoCaptureActivity.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final PICTURE_FILENAME:Ljava/lang/String; = "photo.jpg"

.field private static final TAG:Ljava/lang/String;

.field private static mReportedFovDegrees:F


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraInitialized:Z

.field private mPreview:Landroid/view/SurfaceView;

.field private mPreviewActive:Z

.field private mResolutionSpinner:Landroid/widget/Spinner;

.field private mResolutionSpinnerIndex:I

.field private mSupportedResolutions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/lightcycle/calibration/SelectableResolution;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mReportedFovDegrees:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mCameraInitialized:Z

    .line 54
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mPreviewActive:Z

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mResolutionSpinnerIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mSupportedResolutions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mResolutionSpinnerIndex:I

    return p1
.end method

.method private getBestPreviewSize(IILandroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 254
    const/4 v2, 0x0

    .line 256
    .local v2, "result":Landroid/hardware/Camera$Size;
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 257
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    if-gt v5, p1, :cond_0

    iget v5, v4, Landroid/hardware/Camera$Size;->height:I

    if-gt v5, p2, :cond_0

    .line 258
    if-nez v2, :cond_1

    .line 259
    move-object v2, v4

    goto :goto_0

    .line 261
    :cond_1
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v5, v6

    .line 262
    .local v3, "resultArea":I
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int v1, v5, v6

    .line 264
    .local v1, "newArea":I
    if-le v1, v3, :cond_0

    .line 265
    move-object v2, v4

    goto :goto_0

    .line 270
    .end local v1    # "newArea":I
    .end local v3    # "resultArea":I
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    return-object v2
.end method

.method public static getPictureFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "photo.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getReportedFovDegrees()F
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mReportedFovDegrees:F

    return v0
.end method

.method private startPreview()V
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mCameraInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mPreviewActive:Z

    .line 250
    :cond_0
    return-void
.end method


# virtual methods
.method protected getFocusMode(Landroid/hardware/Camera;)Ljava/lang/String;
    .locals 3
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 127
    .local v0, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 128
    const-string v1, "infinity"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    sget-object v1, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->TAG:Ljava/lang/String;

    const-string v2, "Using Focus mode infinity"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v1, "infinity"

    .line 138
    :goto_0
    return-object v1

    .line 132
    :cond_0
    const-string v1, "fixed"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    sget-object v1, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->TAG:Ljava/lang/String;

    const-string v2, "Using Focus mode fixed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v1, "fixed"

    goto :goto_0

    .line 137
    :cond_1
    sget-object v1, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->TAG:Ljava/lang/String;

    const-string v2, "Using Focus mode auto."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v1, "auto"

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    sget v3, Lcom/google/android/apps/lightcycle/R$layout;->calibration_photo_capture:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->setContentView(I)V

    .line 71
    sget v3, Lcom/google/android/apps/lightcycle/R$id;->camera_preview:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mPreview:Landroid/view/SurfaceView;

    .line 72
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 73
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 76
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 78
    sget v3, Lcom/google/android/apps/lightcycle/R$id;->tap_to_take_photo:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 79
    .local v2, "textView":Landroid/widget/TextView;
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    sget v3, Lcom/google/android/apps/lightcycle/R$id;->settings_button:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 82
    .local v1, "setupButton":Landroid/widget/Button;
    new-instance v3, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$1;-><init>(Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    sget v3, Lcom/google/android/apps/lightcycle/R$id;->preview_overlay:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "previewView":Landroid/view/View;
    new-instance v3, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$2;

    invoke-direct {v3, p0}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$2;-><init>(Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    sget v3, Lcom/google/android/apps/lightcycle/R$id;->resolution_selector:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mResolutionSpinner:Landroid/widget/Spinner;

    .line 100
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mResolutionSpinner:Landroid/widget/Spinner;

    new-instance v4, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$3;

    invoke-direct {v4, p0}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$3;-><init>(Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 117
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mPreviewActive:Z

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mCamera:Landroid/hardware/Camera;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mPreviewActive:Z

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 181
    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 185
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->getPictureFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 186
    .local v3, "pictureFile":Ljava/io/File;
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 187
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v4

    sput v4, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mReportedFovDegrees:F

    .line 189
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 190
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 191
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 192
    sget-object v4, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File saved to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->TAG:Ljava/lang/String;

    const-string v5, "Could not save picture file."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not save picture file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 144
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mCamera:Landroid/hardware/Camera;

    .line 147
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 148
    .local v1, "pm":Landroid/os/PowerManager;
    const/16 v4, 0x1a

    sget-object v5, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 149
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 152
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    .line 154
    .local v3, "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mSupportedResolutions:Ljava/util/List;

    .line 155
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 156
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mSupportedResolutions:Ljava/util/List;

    new-instance v5, Lcom/google/android/apps/lightcycle/calibration/SelectableResolution;

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v5, v6, v7}, Lcom/google/android/apps/lightcycle/calibration/SelectableResolution;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mResolutionSpinner:Landroid/widget/Spinner;

    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x1090009

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mSupportedResolutions:Ljava/util/List;

    invoke-direct {v5, p0, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 164
    iget v4, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mResolutionSpinnerIndex:I

    if-lez v4, :cond_1

    .line 165
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mResolutionSpinner:Landroid/widget/Spinner;

    iget v5, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mResolutionSpinnerIndex:I

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 167
    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 7
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 207
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-nez v3, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 221
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, v5, v5}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 222
    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 223
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->getFocusMode(Landroid/hardware/Camera;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 226
    invoke-direct {p0, p3, p4, v0}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->getBestPreviewSize(IILandroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 227
    .local v1, "size":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_2

    .line 228
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 229
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 230
    iput-boolean v6, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->mCameraInitialized:Z

    .line 232
    :cond_2
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->startPreview()V

    goto :goto_0

    .line 213
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v2

    .line 214
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "TAG"

    const-string v4, "Could not set preview display"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 238
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 243
    return-void
.end method
