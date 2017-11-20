.class Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "HomeTimelineMenuSelectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->onReply(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;

.field final synthetic val$sent:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$1;->this$0:Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;

    iput-object p2, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$1;->val$sent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$1;->val$sent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 112
    :cond_0
    return-void
.end method
