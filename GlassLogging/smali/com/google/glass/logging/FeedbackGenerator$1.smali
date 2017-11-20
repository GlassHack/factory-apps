.class Lcom/google/glass/logging/FeedbackGenerator$1;
.super Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.source "FeedbackGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/FeedbackGenerator;->generateFeedbackItem(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/feedback/FeedbackParams;Lcom/google/glass/logging/CompanionLogReader;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/FeedbackGenerator;

.field final synthetic val$bugId:Ljava/lang/String;

.field final synthetic val$finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic val$timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/FeedbackGenerator;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/logging/FeedbackGenerator;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/glass/logging/FeedbackGenerator$1;->this$0:Lcom/google/glass/logging/FeedbackGenerator;

    iput-object p2, p0, Lcom/google/glass/logging/FeedbackGenerator$1;->val$timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iput-object p3, p0, Lcom/google/glass/logging/FeedbackGenerator$1;->val$finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object p4, p0, Lcom/google/glass/logging/FeedbackGenerator$1;->val$bugId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 160
    iget-object v0, p0, Lcom/google/glass/logging/FeedbackGenerator$1;->val$timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v1, p0, Lcom/google/glass/logging/FeedbackGenerator$1;->val$finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 162
    invoke-static {}, Lcom/google/glass/logging/FeedbackGenerator;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Timeline item updated [bugId=%s]."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/logging/FeedbackGenerator$1;->val$bugId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/google/glass/logging/FeedbackGenerator$1;->val$finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method
