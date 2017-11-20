.class Lcom/google/glass/timeline/ui/TimelineItemAdapter$2;
.super Ljava/lang/Object;
.source "TimelineItemAdapter.java"

# interfaces
.implements Lcom/google/glass/timeline/ui/NotificationState$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/ui/TimelineItemAdapter;->createNotificationStateListener(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/timeline/ui/NotificationState$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

.field final synthetic val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$2;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    iput-object p2, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$2;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object p3, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$2;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateNotificationState(Ljava/lang/String;)V
    .locals 2
    .param p1, "timelineItemId"    # Ljava/lang/String;

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, "shouldShowGuardPhrase":Z
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$2;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$2;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$2;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v1}, Lcom/google/glass/timeline/TimelineItemUtils;->hasSupportedContextualVoiceCommands(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$2;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-virtual {v1, v0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setShouldShowGuardPhrase(Z)V

    .line 420
    return-void
.end method
