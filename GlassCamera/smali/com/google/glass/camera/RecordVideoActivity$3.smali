.class Lcom/google/glass/camera/RecordVideoActivity$3;
.super Lcom/google/glass/async/SerialAsyncTask;
.source "RecordVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/RecordVideoActivity;->onThumbnailGenerated(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/async/SerialAsyncTask",
        "<",
        "Lcom/google/glass/camera/Video;",
        "Ljava/lang/Void;",
        "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/RecordVideoActivity;

.field final synthetic val$thumbnailFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/RecordVideoActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/RecordVideoActivity;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/glass/camera/RecordVideoActivity$3;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    iput-object p2, p0, Lcom/google/glass/camera/RecordVideoActivity$3;->val$thumbnailFilePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/glass/async/SerialAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs serialDoInBackground([Lcom/google/glass/camera/Video;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 7
    .param p1, "params"    # [Lcom/google/glass/camera/Video;

    .prologue
    .line 213
    const/4 v0, 0x0

    aget-object v5, p1, v0

    .line 216
    .local v5, "video":Lcom/google/glass/camera/Video;
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity$3;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    iget-object v1, p0, Lcom/google/glass/camera/RecordVideoActivity$3;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    .line 217
    invoke-static {v1}, Lcom/google/glass/camera/RecordVideoActivity;->access$300(Lcom/google/glass/camera/RecordVideoActivity;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/RecordVideoActivity$3;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    .line 218
    invoke-static {v2}, Lcom/google/glass/camera/RecordVideoActivity;->access$400(Lcom/google/glass/camera/RecordVideoActivity;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/camera/RecordVideoActivity$3;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    .line 219
    invoke-static {v3}, Lcom/google/glass/camera/RecordVideoActivity;->access$500(Lcom/google/glass/camera/RecordVideoActivity;)Lcom/google/glass/timeline/TimelineItemLocationHelper;

    move-result-object v3

    new-instance v4, Lcom/google/glass/sync/AttachmentManager;

    iget-object v6, p0, Lcom/google/glass/camera/RecordVideoActivity$3;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    .line 220
    invoke-virtual {v6}, Lcom/google/glass/camera/RecordVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/google/glass/sync/AttachmentManager;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/google/glass/camera/RecordVideoActivity$3;->val$thumbnailFilePath:Ljava/lang/String;

    .line 216
    invoke-static/range {v0 .. v6}, Lcom/google/glass/camera/RecordVideoActivity;->createAndInsertVideoItem(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemCreationHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/timeline/TimelineItemLocationHelper;Lcom/google/glass/sync/AttachmentManager;Lcom/google/glass/camera/Video;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic serialDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 210
    check-cast p1, [Lcom/google/glass/camera/Video;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/RecordVideoActivity$3;->serialDoInBackground([Lcom/google/glass/camera/Video;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method protected serialOnPostExecute(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 4
    .param p1, "result"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity$3;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    invoke-static {v0, p1}, Lcom/google/glass/camera/RecordVideoActivity;->access$602(Lcom/google/glass/camera/RecordVideoActivity;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 228
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity$3;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/RecordVideoActivity;->access$700(Lcom/google/glass/camera/RecordVideoActivity;)Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/RecordVideoActivity$3;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    invoke-static {v1}, Lcom/google/glass/camera/RecordVideoActivity;->access$600(Lcom/google/glass/camera/RecordVideoActivity;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    .line 231
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity$3;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    iget-object v1, p0, Lcom/google/glass/camera/RecordVideoActivity$3;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    invoke-static {v1}, Lcom/google/glass/camera/RecordVideoActivity;->access$000(Lcom/google/glass/camera/RecordVideoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/RecordVideoActivity$3;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    invoke-static {v2}, Lcom/google/glass/camera/RecordVideoActivity;->access$100(Lcom/google/glass/camera/RecordVideoActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/RecordVideoActivity;->listenForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 234
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity$3;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/RecordVideoActivity;->access$800(Lcom/google/glass/camera/RecordVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-static {}, Lcom/google/glass/camera/RecordVideoActivity;->access$1000()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/RecordVideoActivity$3;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    invoke-static {v1}, Lcom/google/glass/camera/RecordVideoActivity;->access$900(Lcom/google/glass/camera/RecordVideoActivity;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/RecordVideoActivity$3;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    .line 236
    invoke-virtual {v2}, Lcom/google/glass/camera/RecordVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/camera/R$integer;->show_video_timeout_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    .line 235
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    :cond_0
    return-void
.end method

.method protected bridge synthetic serialOnPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 210
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/RecordVideoActivity$3;->serialOnPostExecute(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    return-void
.end method
