.class Lcom/google/glass/timeline/TimelineMenuSelectionHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

.field final synthetic val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$1;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$1;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 312
    invoke-static {}, Lcom/google/glass/babel/AudioMessageHelper$Provider;->getInstance()Lcom/google/glass/babel/AudioMessageHelper$Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$1;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    invoke-static {v1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$000(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/babel/AudioMessageHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/babel/AudioMessageHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$1;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 313
    invoke-virtual {v0, v1}, Lcom/google/glass/babel/AudioMessageHelper;->playAudioForTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$1;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$1;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    .line 318
    :cond_0
    return-void
.end method
