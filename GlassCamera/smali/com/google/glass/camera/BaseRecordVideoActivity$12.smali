.class Lcom/google/glass/camera/BaseRecordVideoActivity$12;
.super Lcom/google/glass/async/SerialAsyncTask;
.source "BaseRecordVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/BaseRecordVideoActivity;->showThumbnail(Lcom/google/glass/camera/Video;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/async/SerialAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field startTime:J

.field final synthetic this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

.field final synthetic val$duration:J

.field final synthetic val$video:Lcom/google/glass/camera/Video;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/camera/Video;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    iput-object p2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->val$video:Lcom/google/glass/camera/Video;

    iput-wide p3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->val$duration:J

    invoke-direct {p0}, Lcom/google/glass/async/SerialAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic serialDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1069
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->serialDoInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs serialDoInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1080
    const-string v3, "Cannot create a thumbnail for a null video."

    iget-object v4, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->val$video:Lcom/google/glass/camera/Video;

    invoke-static {v3, v4}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    invoke-static {}, Lcom/google/glass/camera/ThumbnailHelperProvider;->getInstance()Lcom/google/glass/camera/ThumbnailHelperProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/camera/ThumbnailHelperProvider;->getThumbnailHelper()Lcom/google/glass/util/VideoThumbnailHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->val$video:Lcom/google/glass/camera/Video;

    .line 1082
    invoke-virtual {v4}, Lcom/google/glass/camera/Video;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/util/VideoThumbnailHelper;->createThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1085
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    new-instance v4, Lcom/google/glass/camera/BaseRecordVideoActivity$12$1;

    invoke-direct {v4, p0, v2}, Lcom/google/glass/camera/BaseRecordVideoActivity$12$1;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity$12;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lcom/google/glass/camera/BaseRecordVideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1097
    const-string v3, "thumb_%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->val$video:Lcom/google/glass/camera/Video;

    .line 1098
    invoke-virtual {v7}, Lcom/google/glass/camera/Video;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1099
    .local v0, "fileName":Ljava/lang/String;
    new-instance v3, Lcom/google/glass/camera/CameraUtils;

    invoke-direct {v3}, Lcom/google/glass/camera/CameraUtils;-><init>()V

    iget-object v4, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    .line 1100
    invoke-virtual {v4}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getCachedFilesManagerForThumbnail()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v4

    .line 1099
    invoke-virtual {v3, v4, v2, v0}, Lcom/google/glass/camera/CameraUtils;->saveThumbnailToCachedFiles(Lcom/google/glass/util/CachedFilesManager;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1101
    .local v1, "filePath":Ljava/lang/String;
    return-object v1
.end method

.method protected bridge synthetic serialOnPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1069
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->serialOnPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected serialOnPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1106
    if-nez p1, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Could not generate a thumbnail for the video."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1116
    :goto_0
    return-void

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$600(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->RECORD_VIDEO_THUMBNAIL:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "t"

    .line 1114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->startTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 1112
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1111
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->onThumbnailGenerated(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected serialOnPreExecute()V
    .locals 2

    .prologue
    .line 1075
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->startTime:J

    .line 1076
    return-void
.end method
