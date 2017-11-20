.class Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;
.super Lcom/google/glass/camera/CameraListener;
.source "OpenEndedInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/OpenEndedInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OmniInputCameraListener"
.end annotation


# instance fields
.field private final fadeOutThumbnailRunnable:Ljava/lang/Runnable;

.field private overlayThumbnailView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/google/glass/voice/OpenEndedInputController;

.field private thumbnail:Lcom/google/glass/camera/Picture;


# direct methods
.method private constructor <init>(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 1

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-direct {p0}, Lcom/google/glass/camera/CameraListener;-><init>()V

    .line 1261
    new-instance v0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$1;-><init>(Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;)V

    iput-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->fadeOutThumbnailRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/OpenEndedInputController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p2, "x1"    # Lcom/google/glass/voice/OpenEndedInputController$1;

    .prologue
    .line 1257
    invoke-direct {p0, p1}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;-><init>(Lcom/google/glass/voice/OpenEndedInputController;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;

    .prologue
    .line 1257
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->maybeStartNewInputSession()V

    return-void
.end method

.method static synthetic access$5100(Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->overlayThumbnailView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;)Lcom/google/glass/camera/Picture;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->thumbnail:Lcom/google/glass/camera/Picture;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->fadeOutThumbnailRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private maybeStartNewInputSession()V
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->hasRecognitionResult()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$3700(Lcom/google/glass/voice/OpenEndedInputController;)V

    .line 1319
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$4400(Lcom/google/glass/voice/OpenEndedInputController;)V

    .line 1321
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCameraShutter()V
    .locals 2

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$3300(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_SHUTTER:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 1282
    return-void
.end method

.method protected onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$5700(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/widget/CropMarksView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/CropMarksView;->setVisibility(I)V

    .line 1310
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$3300(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 1311
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    sget-object v1, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->READY_FOR_CAMERA_BUTTON:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    invoke-static {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$5902(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;)Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    .line 1312
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->maybeStartNewInputSession()V

    .line 1313
    return-void
.end method

.method protected onPictureTaken(Lcom/google/glass/camera/Picture;)V
    .locals 4
    .param p1, "picture"    # Lcom/google/glass/camera/Picture;

    .prologue
    .line 1286
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->thumbnail:Lcom/google/glass/camera/Picture;

    .line 1287
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    sget-object v1, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->DISPLAYING_THUMBNAIL:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    invoke-static {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$5000(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;)V

    .line 1290
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    .line 1291
    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$5400(Lcom/google/glass/voice/OpenEndedInputController;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$layout;->overlay_image_view:I

    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v2}, Lcom/google/glass/voice/OpenEndedInputController;->getContentView()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->overlayThumbnailView:Landroid/widget/ImageView;

    .line 1292
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->overlayThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1293
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->overlayThumbnailView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1294
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->overlayThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1295
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;->overlayThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$2;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener$2;-><init>(Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;)V

    .line 1296
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1304
    return-void
.end method
