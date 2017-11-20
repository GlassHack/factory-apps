.class Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;
.super Lcom/google/glass/camera/CameraListener;
.source "BaseTakePictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/BaseTakePictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PictureCameraListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/BaseTakePictureActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/camera/BaseTakePictureActivity;)V
    .locals 0

    .prologue
    .line 821
    iput-object p1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-direct {p0}, Lcom/google/glass/camera/CameraListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/camera/BaseTakePictureActivity;Lcom/google/glass/camera/BaseTakePictureActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/camera/BaseTakePictureActivity;
    .param p2, "x1"    # Lcom/google/glass/camera/BaseTakePictureActivity$1;

    .prologue
    .line 821
    invoke-direct {p0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;-><init>(Lcom/google/glass/camera/BaseTakePictureActivity;)V

    return-void
.end method

.method private wasFromScreenOff()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 962
    iget-object v3, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v3}, Lcom/google/glass/camera/BaseTakePictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 963
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 964
    iget-object v3, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v3}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$000(Lcom/google/glass/camera/BaseTakePictureActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "No intent to check screen off state."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 972
    :goto_0
    return v2

    .line 967
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 968
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 969
    iget-object v3, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v3}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$000(Lcom/google/glass/camera/BaseTakePictureActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "No action to check screen off state."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 972
    :cond_1
    const-string v2, "com.google.glass.action.TAKE_PICTURE_FROM_SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method protected onCameraShutter()V
    .locals 2

    .prologue
    .line 978
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_SHUTTER:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 981
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->isOnPreviewCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v0, v0, Lcom/google/glass/camera/BaseTakePictureActivity;->cropMarksView:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    invoke-virtual {v0}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->play()V

    .line 984
    :cond_0
    return-void
.end method

.method protected onError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 988
    if-eqz p1, :cond_0

    .line 989
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$000(Lcom/google/glass/camera/BaseTakePictureActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->finish()V

    .line 992
    return-void
.end method

.method protected onPictureCaptureComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 849
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    sget-object v1, Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;->IDLE:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    iput-object v1, v0, Lcom/google/glass/camera/BaseTakePictureActivity;->state:Lcom/google/glass/camera/BaseTakePictureActivity$CameraState;

    .line 852
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v0, v0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollAdapter:Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;

    invoke-virtual {v0}, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->notifyDataSetChanged()V

    .line 854
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->activateThumbnailScrollView()V

    .line 856
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v0, v0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0, v3}, Lcom/google/android/glass/widget/CardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 859
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v1, v1, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->isOnOlderThumbnailCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v0, v0, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v1, v1, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setSelection(I)V

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->isOnPreviewCard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->startCameraPreview()V

    .line 868
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0, v3}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1302(Lcom/google/glass/camera/BaseTakePictureActivity;Z)Z

    .line 875
    :goto_0
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iput-boolean v3, v0, Lcom/google/glass/camera/BaseTakePictureActivity;->firstPictureTaken:Z

    .line 876
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->onPictureCaptureComplete()V

    .line 877
    return-void

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/BaseTakePictureActivity;->slideOffThumbnail(J)V

    .line 871
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0, v3}, Lcom/google/glass/camera/BaseTakePictureActivity;->toggleNudgeAndScreenTimeout(Z)V

    goto :goto_0
.end method

.method protected onPictureSaved(Lcom/google/glass/camera/Picture;)V
    .locals 10
    .param p1, "picture"    # Lcom/google/glass/camera/Picture;

    .prologue
    .line 925
    const-string v2, "s"

    .line 927
    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getShutterTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getRequestTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x12

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v5, "t"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    .line 929
    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getThumbnailTime()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getRequestTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "j"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    .line 931
    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getJpegTime()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getRequestTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const-string v5, "p"

    aput-object v5, v4, v1

    const/4 v1, 0x5

    .line 933
    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getPrepareCameraSavings()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x6

    const-string v5, "c"

    aput-object v5, v4, v1

    const/4 v1, 0x7

    .line 935
    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getCaptureTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v1, 0x8

    const-string v5, "g"

    aput-object v5, v4, v1

    const/16 v1, 0x9

    .line 937
    invoke-static {p1}, Lcom/google/glass/camera/Picture;->getGcamType(Lcom/google/glass/camera/Picture;)Lcom/google/glass/camera/Picture$GcamType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/camera/Picture$GcamType;->getLoggingCode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v1, 0xa

    const-string v5, "d"

    aput-object v5, v4, v1

    const/16 v5, 0xb

    .line 939
    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->wasFromScreenOff()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "0"

    :goto_0
    aput-object v1, v4, v5

    const/16 v1, 0xc

    const-string v5, "la"

    aput-object v5, v4, v1

    const/16 v5, 0xd

    .line 941
    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getLocation()Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    .line 942
    :goto_1
    aput-object v1, v4, v5

    const/16 v1, 0xe

    const-string v5, "v"

    aput-object v5, v4, v1

    const/16 v5, 0xf

    .line 945
    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getIsFromViewfinderSession()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "1"

    :goto_2
    aput-object v1, v4, v5

    const/16 v1, 0x10

    const-string v5, "tr"

    aput-object v5, v4, v1

    const/16 v1, 0x11

    .line 947
    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getTriggerType()Lcom/google/glass/camera/Picture$TriggerType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/camera/Picture$TriggerType;->getLoggingCode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 926
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 948
    .local v0, "timingData":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$100(Lcom/google/glass/camera/BaseTakePictureActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->CAMERA_TIMINGS:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 950
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v1, p1}, Lcom/google/glass/camera/BaseTakePictureActivity;->onPictureSaved(Lcom/google/glass/camera/Picture;)V

    .line 955
    iget-boolean v1, p1, Lcom/google/glass/camera/Picture;->isGcam:Z

    if-nez v1, :cond_0

    .line 956
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->onPictureCaptureComplete()V

    .line 958
    :cond_0
    return-void

    .line 939
    .end local v0    # "timingData":Ljava/lang/String;
    :cond_1
    const-string v1, "1"

    goto :goto_0

    .line 942
    :cond_2
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v6

    .line 943
    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 942
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    .line 945
    :cond_3
    const-string v1, "0"

    goto :goto_2
.end method

.method protected onPictureTaken(Lcom/google/glass/camera/Picture;)V
    .locals 6
    .param p1, "picture"    # Lcom/google/glass/camera/Picture;

    .prologue
    const/4 v5, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 881
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 883
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v2

    if-nez v2, :cond_0

    .line 884
    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v2}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$000(Lcom/google/glass/camera/BaseTakePictureActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Removing postview timeout runnable."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 885
    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v2}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1600(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v3}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1500(Lcom/google/glass/camera/BaseTakePictureActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 888
    :cond_0
    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-boolean v2, v2, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-eqz v2, :cond_3

    .line 889
    invoke-virtual {p1, v0}, Lcom/google/glass/camera/Picture;->setIsFromViewfinderSession(Z)V

    .line 892
    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v2}, Lcom/google/glass/camera/BaseTakePictureActivity;->isOnPreviewCard()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 893
    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v2}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1700(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 902
    :goto_0
    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/camera/BaseTakePictureActivity;->fadeInThumbnail(Landroid/graphics/Bitmap;)V

    .line 903
    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-boolean v2, v2, Lcom/google/glass/camera/BaseTakePictureActivity;->firstPictureTaken:Z

    if-nez v2, :cond_1

    .line 909
    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    sget v3, Lcom/google/glass/camera/R$id;->background:I

    invoke-virtual {v2, v3}, Lcom/google/glass/camera/BaseTakePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 912
    :cond_1
    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v2, v2, Lcom/google/glass/camera/BaseTakePictureActivity;->thumbnailsInSession:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-boolean v2, v2, Lcom/google/glass/camera/BaseTakePictureActivity;->firstPictureTaken:Z

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->wasFromScreenOff()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/glass/camera/Picture;->setWasFromScreenOff(Z)V

    .line 917
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity;->onPictureTaken(Lcom/google/glass/camera/Picture;)V

    .line 920
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1800(Lcom/google/glass/camera/BaseTakePictureActivity;Lcom/google/glass/camera/Picture;)V

    .line 921
    return-void

    .line 895
    :cond_2
    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v2, v2, Lcom/google/glass/camera/BaseTakePictureActivity;->cropMarksView:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    invoke-virtual {v2, v5}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->setVisibility(I)V

    goto :goto_0

    .line 899
    :cond_3
    iget-object v2, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v2, v2, Lcom/google/glass/camera/BaseTakePictureActivity;->cropMarksView:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    invoke-virtual {v2, v5}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 916
    goto :goto_1
.end method

.method public onPreviewFrame([BJ)V
    .locals 4
    .param p1, "frame"    # [B
    .param p2, "captureTimeNanos"    # J

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 824
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-boolean v0, v0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-eqz v0, :cond_2

    .line 826
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$900(Lcom/google/glass/camera/BaseTakePictureActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1100(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 829
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1200(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 830
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0, v3}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$902(Lcom/google/glass/camera/BaseTakePictureActivity;Z)Z

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1300(Lcom/google/glass/camera/BaseTakePictureActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 836
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1100(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 837
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/BaseTakePictureActivity;->slideOffThumbnail(J)V

    .line 838
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0, v3}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1302(Lcom/google/glass/camera/BaseTakePictureActivity;Z)Z

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0, p1}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1402(Lcom/google/glass/camera/BaseTakePictureActivity;[B)[B

    .line 843
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$PictureCameraListener;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v0, v0, Lcom/google/glass/camera/BaseTakePictureActivity;->cameraClient:Lcom/google/glass/camera/CameraClient;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/CameraClient;->recyclePreviewFrame([B)V

    .line 845
    :cond_2
    return-void
.end method
