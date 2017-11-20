.class Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3$1;
.super Ljava/lang/Object;
.source "ReadMoreHtmlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;

    iget-object v0, v0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    invoke-static {v0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->access$500(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;

    iget-object v1, v1, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    invoke-static {v1}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->access$300(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    .line 187
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;

    iget-boolean v0, v0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;->val$usingCachedVersion:Z

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;

    iget-object v0, v0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$3;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    invoke-static {v0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->access$600(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)V

    .line 190
    :cond_0
    return-void
.end method
