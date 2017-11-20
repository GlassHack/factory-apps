.class Lcom/google/glass/timeline/TimelineMenuSelectionHandler$8;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 892
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$8;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iput p2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$8;->val$resultCode:I

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$8;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 897
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$8;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$200(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    aget-object v1, p1, v5

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 898
    if-nez v0, :cond_0

    .line 899
    invoke-static {}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "No item found for timeline item %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, p1, v5

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 901
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 892
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$8;->doInBackground([Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 3

    .prologue
    .line 907
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$8;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iget v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$8;->val$resultCode:I

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$8;->val$intent:Landroid/content/Intent;

    invoke-static {v0, p1, v1, v2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$400(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ILandroid/content/Intent;)V

    .line 908
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 892
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$8;->onPostExecute(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    return-void
.end method
