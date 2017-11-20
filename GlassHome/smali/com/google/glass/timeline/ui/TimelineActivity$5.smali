.class Lcom/google/glass/timeline/ui/TimelineActivity$5;
.super Ljava/lang/Object;
.source "TimelineActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/ui/TimelineActivity;->ensureOnItemClickListener(Lcom/google/glass/timeline/ui/TimelineView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/ui/TimelineActivity;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$5;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$5;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$1400(Lcom/google/glass/timeline/ui/TimelineActivity;)V

    .line 415
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$5;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$1500(Lcom/google/glass/timeline/ui/TimelineActivity;)V

    .line 418
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$5;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0, p2}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$1600(Lcom/google/glass/timeline/ui/TimelineActivity;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$5;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 422
    sget v0, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_read_result:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    .line 423
    .local v7, "result":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    invoke-virtual {v7}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 424
    .local v2, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    new-instance v1, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v1, v2}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 425
    .local v1, "itemId":Lcom/google/glass/timeline/TimelineItemId;
    invoke-static {v2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$5;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToBundle(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemId;ZLcom/google/glass/time/Stopwatch;)V

    .line 445
    .end local v1    # "itemId":Lcom/google/glass/timeline/TimelineItemId;
    .end local v2    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v7    # "result":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    :goto_0
    return-void

    :cond_0
    move-object v6, p2

    .line 435
    check-cast v6, Lcom/google/glass/widget/horizontalscroll/Card;

    .line 438
    .local v6, "card":Lcom/google/glass/widget/horizontalscroll/Card;
    invoke-interface {v6}, Lcom/google/glass/widget/horizontalscroll/Card;->onConfirm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$5;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    goto :goto_0

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$5;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->onConfirm()Z

    goto :goto_0
.end method
