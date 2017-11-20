.class Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;
.super Ljava/lang/Object;
.source "ReadMoreHtmlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->onResumeInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

.field final synthetic val$itemId:Lcom/google/glass/timeline/TimelineItemId;

.field final synthetic val$usingCachedVersion:Z


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;Lcom/google/glass/timeline/TimelineItemId;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    iput-object p2, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    iput-boolean p3, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;->val$usingCachedVersion:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    invoke-static {v1}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->access$400(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v2}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->access$302(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 183
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3$1;-><init>(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method
