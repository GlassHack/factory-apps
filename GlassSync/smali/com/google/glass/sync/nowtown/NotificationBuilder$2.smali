.class Lcom/google/glass/sync/nowtown/NotificationBuilder$2;
.super Ljava/lang/Object;
.source "NotificationBuilder.java"

# interfaces
.implements Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/nowtown/NotificationBuilder;->startBuild(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/nowtown/NotificationBuilder;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/nowtown/NotificationBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/nowtown/NotificationBuilder;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder$2;->this$0:Lcom/google/glass/sync/nowtown/NotificationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentSized(Lcom/google/glass/timeline/TimelineItemId;Z)V
    .locals 1
    .param p1, "itemId"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p2, "clipped"    # Z

    .prologue
    .line 155
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 156
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder$2;->this$0:Lcom/google/glass/sync/nowtown/NotificationBuilder;

    invoke-static {v0}, Lcom/google/glass/sync/nowtown/NotificationBuilder;->access$000(Lcom/google/glass/sync/nowtown/NotificationBuilder;)Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder$2;->this$0:Lcom/google/glass/sync/nowtown/NotificationBuilder;

    invoke-static {v0, p2}, Lcom/google/glass/sync/nowtown/NotificationBuilder;->access$002(Lcom/google/glass/sync/nowtown/NotificationBuilder;Z)Z

    .line 158
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder$2;->this$0:Lcom/google/glass/sync/nowtown/NotificationBuilder;

    invoke-static {v0}, Lcom/google/glass/sync/nowtown/NotificationBuilder;->access$100(Lcom/google/glass/sync/nowtown/NotificationBuilder;)V

    .line 160
    :cond_0
    return-void
.end method
