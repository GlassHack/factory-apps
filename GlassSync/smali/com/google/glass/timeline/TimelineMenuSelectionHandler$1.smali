.class Lcom/google/glass/timeline/TimelineMenuSelectionHandler$1;
.super Ljava/lang/Object;
.source "TimelineMenuSelectionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onPlayAudio(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

.field final synthetic val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$1;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$1;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 312
    invoke-static {}, Lcom/google/glass/babel/AudioMessageHelper$Provider;->getInstance()Lcom/google/glass/babel/AudioMessageHelper$Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$1;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    invoke-static {v2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$000(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/babel/AudioMessageHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/babel/AudioMessageHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$1;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 313
    invoke-virtual {v1, v2}, Lcom/google/glass/babel/AudioMessageHelper;->playAudioForTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    .line 314
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 316
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$1;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$1;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v1, v2}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    .line 318
    :cond_0
    return-void
.end method
