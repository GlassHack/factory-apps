.class Lcom/google/glass/videoplayer/VideoPlayer$4;
.super Lcom/google/glass/async/SerialAsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/videoplayer/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/google/glass/videoplayer/VideoPlayer;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-direct {p0}, Lcom/google/glass/async/SerialAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic serialDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 463
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/videoplayer/VideoPlayer$4;->serialDoInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs serialDoInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 493
    invoke-virtual {p0}, Lcom/google/glass/videoplayer/VideoPlayer$4;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    :goto_0
    return-object v1

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1700(Lcom/google/glass/videoplayer/VideoPlayer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 501
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1700(Lcom/google/glass/videoplayer/VideoPlayer;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    .line 515
    :goto_1
    iget-object v3, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v3}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1700(Lcom/google/glass/videoplayer/VideoPlayer;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v3}, Lcom/google/glass/videoplayer/VideoPlayer;->access$2000(Lcom/google/glass/videoplayer/VideoPlayer;)Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/glass/util/CachedBitmapFactory;->cacheContainsAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 518
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v3}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1700(Lcom/google/glass/videoplayer/VideoPlayer;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 519
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1700(Lcom/google/glass/videoplayer/VideoPlayer;)Ljava/lang/String;

    move-result-object v2

    .line 534
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$600(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v3, Lcom/google/glass/videoplayer/VideoPlayer$4$1;

    invoke-direct {v3, p0}, Lcom/google/glass/videoplayer/VideoPlayer$4$1;-><init>(Lcom/google/glass/videoplayer/VideoPlayer$4;)V

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 543
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$600(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v3, Lcom/google/glass/videoplayer/VideoPlayer$4$2;

    invoke-direct {v3, p0}, Lcom/google/glass/videoplayer/VideoPlayer$4$2;-><init>(Lcom/google/glass/videoplayer/VideoPlayer$4;)V

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 556
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$600(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v3, Lcom/google/glass/videoplayer/VideoPlayer$4$3;

    invoke-direct {v3, p0}, Lcom/google/glass/videoplayer/VideoPlayer$4$3;-><init>(Lcom/google/glass/videoplayer/VideoPlayer$4;)V

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 565
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v3, "Setting video source to %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$600(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0, v2}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1702(Lcom/google/glass/videoplayer/VideoPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$600(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 574
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1600(Lcom/google/glass/videoplayer/VideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 575
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v2, "Preparing player."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$600(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 578
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$300(Lcom/google/glass/videoplayer/VideoPlayer;)Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;->onReady()V

    .line 579
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/glass/videoplayer/VideoPlayer;->isPrepared:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 585
    :cond_3
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1600(Lcom/google/glass/videoplayer/VideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 586
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v2, "Starting playback."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    iget-object v2, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v2}, Lcom/google/glass/videoplayer/VideoPlayer;->access$600(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/glass/videoplayer/VideoPlayer;->access$502(Lcom/google/glass/videoplayer/VideoPlayer;I)I

    .line 588
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    iget-boolean v0, v0, Lcom/google/glass/videoplayer/VideoPlayer;->isPausedByActivity:Z

    if-nez v0, :cond_4

    .line 589
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-virtual {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->play()V

    .line 593
    :cond_4
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$600(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v2, Lcom/google/glass/videoplayer/VideoPlayer$4$4;

    invoke-direct {v2, p0}, Lcom/google/glass/videoplayer/VideoPlayer$4$4;-><init>(Lcom/google/glass/videoplayer/VideoPlayer$4;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Failed to start playback."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 503
    :cond_5
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1900(Lcom/google/glass/videoplayer/VideoPlayer;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v2}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1800(Lcom/google/glass/videoplayer/VideoPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 506
    sget-object v2, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 508
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    invoke-static {v2}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 509
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 512
    iget-object v2, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v2}, Lcom/google/glass/videoplayer/VideoPlayer;->access$2000(Lcom/google/glass/videoplayer/VideoPlayer;)Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v2

    invoke-virtual {v2, v0, v6}, Lcom/google/glass/util/CachedBitmapFactory;->getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 521
    :cond_6
    :try_start_3
    iget-object v3, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-virtual {v3, v0}, Lcom/google/glass/videoplayer/VideoPlayer;->isVideoStreamUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 522
    invoke-static {v2}, Lcom/google/glass/videoplayer/VideoPlayer;->readVideoStreamUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 523
    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 529
    :cond_7
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    const/16 v3, 0x64

    iput v3, v0, Lcom/google/glass/videoplayer/VideoPlayer;->bufferedPercent:I

    goto/16 :goto_2

    .line 581
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$300(Lcom/google/glass/videoplayer/VideoPlayer;)Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;

    move-result-object v0

    sget v2, Lcom/google/glass/videoplayer/R$string;->media_player_already_captured:I

    invoke-interface {v0, v2}, Lcom/google/glass/videoplayer/VideoPlayer$ViewListener;->onError(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 615
    :cond_8
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Failed to load video attachment: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected serialOnPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 466
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 469
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1300(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    invoke-virtual {p0, v2}, Lcom/google/glass/videoplayer/VideoPlayer$4;->cancel(Z)Z

    .line 489
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$600(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {}, Lcom/google/glass/android/media/MediaPlayerProvider;->getInstance()Lcom/google/glass/android/media/MediaPlayerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/android/media/MediaPlayerProvider;->get()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/videoplayer/VideoPlayer;->access$602(Lcom/google/glass/videoplayer/VideoPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0, v2}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1602(Lcom/google/glass/videoplayer/VideoPlayer;Z)Z

    .line 483
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1102(Lcom/google/glass/videoplayer/VideoPlayer;Z)Z

    .line 486
    invoke-static {}, Lcom/google/glass/videoplayer/VideoPlayer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Adding surface."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    iget-object v0, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->access$600(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/google/glass/videoplayer/VideoPlayer$4;->this$0:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v2}, Lcom/google/glass/videoplayer/VideoPlayer;->access$1300(Lcom/google/glass/videoplayer/VideoPlayer;)Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method
