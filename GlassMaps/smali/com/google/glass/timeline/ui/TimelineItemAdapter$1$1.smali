.class Lcom/google/glass/timeline/ui/TimelineItemAdapter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;


# instance fields
.field final synthetic this$1:Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;

.field final synthetic val$itemId:Lcom/google/glass/timeline/TimelineItemId;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1$1;->this$1:Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;

    iput-object p2, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1$1;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextClipped(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1$1;->this$1:Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;

    iget-object v0, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$1000(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Lcom/google/glass/timeline/ui/TimelineItemAdapter$RemainingTextListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1$1;->this$1:Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;

    iget-object v0, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$1000(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Lcom/google/glass/timeline/ui/TimelineItemAdapter$RemainingTextListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1$1;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-interface {v0, v1, p1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter$RemainingTextListener;->onRemainingText(Lcom/google/glass/timeline/TimelineItemId;Ljava/lang/CharSequence;)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1$1;->this$1:Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;

    iget-object v0, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$1100(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1$1;->this$1:Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;

    iget-object v0, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$1100(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1$1;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;->onContentSized(Lcom/google/glass/timeline/TimelineItemId;Z)V

    .line 337
    :cond_1
    return-void
.end method
