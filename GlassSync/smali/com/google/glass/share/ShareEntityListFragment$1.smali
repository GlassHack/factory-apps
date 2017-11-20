.class Lcom/google/glass/share/ShareEntityListFragment$1;
.super Ljava/lang/Object;
.source "ShareEntityListFragment.java"

# interfaces
.implements Lcom/google/glass/entity/EntityItemView$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/share/ShareEntityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/share/ShareEntityListFragment;


# direct methods
.method constructor <init>(Lcom/google/glass/share/ShareEntityListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/share/ShareEntityListFragment;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/glass/share/ShareEntityListFragment$1;->this$0:Lcom/google/glass/share/ShareEntityListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 3
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 35
    iget-object v1, p0, Lcom/google/glass/share/ShareEntityListFragment$1;->this$0:Lcom/google/glass/share/ShareEntityListFragment;

    invoke-static {v1}, Lcom/google/glass/share/ShareEntityListFragment;->access$000(Lcom/google/glass/share/ShareEntityListFragment;)Lcom/google/glass/share/ShareEntityListFragment$Listener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/glass/share/ShareEntityListFragment$Listener;->onShareTargetSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    .line 36
    .local v0, "isTapeSuccessful":Z
    iget-object v1, p0, Lcom/google/glass/share/ShareEntityListFragment$1;->this$0:Lcom/google/glass/share/ShareEntityListFragment;

    invoke-virtual {v1}, Lcom/google/glass/share/ShareEntityListFragment;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    :goto_0
    invoke-virtual {v2, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 37
    return v0

    .line 36
    :cond_0
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    goto :goto_0
.end method
