.class Lcom/google/glass/timeline/TimelineItemDatabaseHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field final synthetic val$action:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic val$itemType:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$1;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$1;->val$itemType:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    iput-object p4, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$1;->val$action:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$1;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$1;->val$itemType:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$1;->val$action:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    .line 341
    return-void
.end method
