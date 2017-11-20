.class final Lcom/google/glass/share/ShareLocationActivity$QueryTimelineItemTask;
.super Landroid/os/AsyncTask;
.source "ShareLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/share/ShareLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryTimelineItemTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/share/ShareLocationActivity;

.field private final timelineItemId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/glass/share/ShareLocationActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "timelineItemId"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/google/glass/share/ShareLocationActivity$QueryTimelineItemTask;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 220
    iput-object p2, p0, Lcom/google/glass/share/ShareLocationActivity$QueryTimelineItemTask;->timelineItemId:Ljava/lang/String;

    .line 221
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/share/ShareLocationActivity;Ljava/lang/String;Lcom/google/glass/share/ShareLocationActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/share/ShareLocationActivity;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/google/glass/share/ShareLocationActivity$1;

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/google/glass/share/ShareLocationActivity$QueryTimelineItemTask;-><init>(Lcom/google/glass/share/ShareLocationActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 216
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/share/ShareLocationActivity$QueryTimelineItemTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity$QueryTimelineItemTask;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    iget-object v1, p0, Lcom/google/glass/share/ShareLocationActivity$QueryTimelineItemTask;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-static {v1}, Lcom/google/glass/share/ShareLocationActivity;->access$300(Lcom/google/glass/share/ShareLocationActivity;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/share/ShareLocationActivity$QueryTimelineItemTask;->timelineItemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/share/ShareLocationActivity;->access$202(Lcom/google/glass/share/ShareLocationActivity;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 216
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/share/ShareLocationActivity$QueryTimelineItemTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity$QueryTimelineItemTask;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-static {v0}, Lcom/google/glass/share/ShareLocationActivity;->access$200(Lcom/google/glass/share/ShareLocationActivity;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 232
    invoke-static {}, Lcom/google/glass/share/ShareLocationActivity;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Couldn\'t lookup timeline item [id=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/share/ShareLocationActivity$QueryTimelineItemTask;->timelineItemId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity$QueryTimelineItemTask;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-static {v0}, Lcom/google/glass/share/ShareLocationActivity;->access$500(Lcom/google/glass/share/ShareLocationActivity;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/glass/share/ShareLocationActivity$LocationLoadedHandler;

    iget-object v2, p0, Lcom/google/glass/share/ShareLocationActivity$QueryTimelineItemTask;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/glass/share/ShareLocationActivity$LocationLoadedHandler;-><init>(Lcom/google/glass/share/ShareLocationActivity;Lcom/google/glass/share/ShareLocationActivity$1;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto :goto_0
.end method
