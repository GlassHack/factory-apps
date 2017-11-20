.class Lcom/google/glass/share/ShareActivity$4;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/share/ShareActivity;->onTemporaryShareCreated(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/share/ShareActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/share/ShareActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/share/ShareActivity;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/google/glass/share/ShareActivity$4;->this$0:Lcom/google/glass/share/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity$4;->this$0:Lcom/google/glass/share/ShareActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/share/ShareActivity;->access$302(Lcom/google/glass/share/ShareActivity;Z)Z

    .line 505
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity$4;->this$0:Lcom/google/glass/share/ShareActivity;

    invoke-static {v0}, Lcom/google/glass/share/ShareActivity;->access$500(Lcom/google/glass/share/ShareActivity;)Lcom/google/glass/share/ShareDraftFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/share/ShareActivity$4;->this$0:Lcom/google/glass/share/ShareActivity;

    invoke-static {v1}, Lcom/google/glass/share/ShareActivity;->access$400(Lcom/google/glass/share/ShareActivity;)Lcom/google/glass/share/ShareTimelineItemJob;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/share/ShareTimelineItemJob;->getTemporaryItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/share/ShareDraftFragment;->setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 506
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity$4;->this$0:Lcom/google/glass/share/ShareActivity;

    invoke-static {v0}, Lcom/google/glass/share/ShareActivity;->access$600(Lcom/google/glass/share/ShareActivity;)V

    .line 507
    return-void
.end method
