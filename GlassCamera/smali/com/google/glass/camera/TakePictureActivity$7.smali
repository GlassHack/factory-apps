.class Lcom/google/glass/camera/TakePictureActivity$7;
.super Lcom/google/glass/async/SerialAsyncTask;
.source "TakePictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/TakePictureActivity;->onPictureTaken(Lcom/google/glass/camera/Picture;)V
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
        "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
        ">;"
    }
.end annotation


# instance fields
.field private item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic this$0:Lcom/google/glass/camera/TakePictureActivity;

.field final synthetic val$picture:Lcom/google/glass/camera/Picture;

.field final synthetic val$pictureTakenTimestamp:J


# direct methods
.method constructor <init>(Lcom/google/glass/camera/TakePictureActivity;Lcom/google/glass/camera/Picture;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 669
    iput-object p1, p0, Lcom/google/glass/camera/TakePictureActivity$7;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iput-object p2, p0, Lcom/google/glass/camera/TakePictureActivity$7;->val$picture:Lcom/google/glass/camera/Picture;

    iput-wide p3, p0, Lcom/google/glass/camera/TakePictureActivity$7;->val$pictureTakenTimestamp:J

    invoke-direct {p0}, Lcom/google/glass/async/SerialAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs serialDoInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$7;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$7;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v3, p0, Lcom/google/glass/camera/TakePictureActivity$7;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    .line 680
    invoke-static {v3}, Lcom/google/glass/camera/TakePictureActivity;->access$800(Lcom/google/glass/camera/TakePictureActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v3

    .line 679
    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->validateAndEnqueueItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLandroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    .line 682
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$7;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$7;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v1}, Lcom/google/glass/camera/TakePictureActivity;->access$1300(Lcom/google/glass/camera/TakePictureActivity;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v1

    .line 683
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/camera/TakePictureActivity$7;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$7;->val$picture:Lcom/google/glass/camera/Picture;

    .line 682
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/glass/camera/TakePictureActivity;->updatePictureItemWhenTaken(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/util/CachedFilesManager;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/camera/Picture;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic serialDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 669
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/TakePictureActivity$7;->serialDoInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method protected serialOnPostExecute(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 8
    .param p1, "result"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v7, 0x0

    .line 689
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$7;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$7;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v1}, Lcom/google/glass/camera/Picture;->getIdInSession()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/camera/TakePictureActivity;->access$700(Lcom/google/glass/camera/TakePictureActivity;I)Lcom/google/glass/camera/TimelineInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/TimelineInfo;->setItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 690
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$7;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v0, v0, Lcom/google/glass/camera/TakePictureActivity;->grammarLoader:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$7;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$7;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v2}, Lcom/google/glass/camera/Picture;->getIdInSession()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/glass/camera/TakePictureActivity;->access$700(Lcom/google/glass/camera/TakePictureActivity;I)Lcom/google/glass/camera/TimelineInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/camera/TimelineInfo;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    .line 693
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$7;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/TakePictureActivity;->access$200(Lcom/google/glass/camera/TakePictureActivity;)V

    .line 697
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$7;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/TakePictureActivity;->access$1400(Lcom/google/glass/camera/TakePictureActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$7;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/TakePictureActivity;->access$1500(Lcom/google/glass/camera/TakePictureActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$7;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/TakePictureActivity;->access$1700(Lcom/google/glass/camera/TakePictureActivity;)Lcom/google/glass/android/os/HandlerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$7;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v1}, Lcom/google/glass/camera/TakePictureActivity;->access$1600(Lcom/google/glass/camera/TakePictureActivity;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$7;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    .line 699
    invoke-virtual {v2}, Lcom/google/glass/camera/TakePictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/camera/R$integer;->show_picture_timeout_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    .line 698
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/android/os/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$7;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/TakePictureActivity;->access$800(Lcom/google/glass/camera/TakePictureActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->PICTURE_MENU_DELAY:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "t"

    .line 704
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/camera/TakePictureActivity$7;->val$pictureTakenTimestamp:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 703
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$7;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/TakePictureActivity;->access$1800(Lcom/google/glass/camera/TakePictureActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$7;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v0, v7}, Lcom/google/glass/camera/TakePictureActivity;->access$1802(Lcom/google/glass/camera/TakePictureActivity;Z)Z

    .line 709
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$7;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/TakePictureActivity;->access$1900(Lcom/google/glass/camera/TakePictureActivity;)Z

    .line 711
    :cond_1
    return-void
.end method

.method protected bridge synthetic serialOnPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 669
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/TakePictureActivity$7;->serialOnPostExecute(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    return-void
.end method

.method protected serialOnPreExecute()V
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$7;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$7;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v1}, Lcom/google/glass/camera/Picture;->getIdInSession()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/camera/TakePictureActivity;->access$700(Lcom/google/glass/camera/TakePictureActivity;I)Lcom/google/glass/camera/TimelineInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/camera/TimelineInfo;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$7;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 675
    return-void
.end method
