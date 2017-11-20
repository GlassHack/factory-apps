.class Lcom/google/glass/voice/SendMessageTimelineCreatorJob$1;
.super Landroid/os/FileObserver;
.source "SendMessageTimelineCreatorJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->waitForPictureToBeSaved()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

.field final synthetic val$parentFile:Ljava/io/File;

.field final synthetic val$pictureFile:Ljava/io/File;

.field final synthetic val$savePictureLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/SendMessageTimelineCreatorJob;Ljava/lang/String;ILjava/io/File;Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/SendMessageTimelineCreatorJob;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I

    .prologue
    .line 284
    iput-object p1, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob$1;->this$0:Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

    iput-object p4, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob$1;->val$pictureFile:Ljava/io/File;

    iput-object p5, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob$1;->val$parentFile:Ljava/io/File;

    iput-object p6, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob$1;->val$savePictureLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 287
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob$1;->val$pictureFile:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob$1;->val$parentFile:Ljava/io/File;

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob$1;->stopWatching()V

    .line 289
    iget-object v0, p0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob$1;->val$savePictureLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 291
    :cond_0
    return-void
.end method
