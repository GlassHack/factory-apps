.class Lcom/google/glass/html/PagedWebView$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/google/glass/html/PagedWebView$6;


# direct methods
.method constructor <init>(Lcom/google/glass/html/PagedWebView$6;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/google/glass/html/PagedWebView$6$1;->this$1:Lcom/google/glass/html/PagedWebView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$6$1;->this$1:Lcom/google/glass/html/PagedWebView$6;

    iget-object v0, v0, Lcom/google/glass/html/PagedWebView$6;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Lcom/google/glass/html/PagedWebView;->access$200(Lcom/google/glass/html/PagedWebView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$6$1;->this$1:Lcom/google/glass/html/PagedWebView$6;

    iget-object v0, v0, Lcom/google/glass/html/PagedWebView$6;->this$0:Lcom/google/glass/html/PagedWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/html/PagedWebView;->access$1702(Lcom/google/glass/html/PagedWebView;Z)Z

    .line 563
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$6$1;->this$1:Lcom/google/glass/html/PagedWebView$6;

    iget-object v0, v0, Lcom/google/glass/html/PagedWebView$6;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Lcom/google/glass/html/PagedWebView;->access$1100(Lcom/google/glass/html/PagedWebView;)V

    .line 565
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$6$1;->this$1:Lcom/google/glass/html/PagedWebView$6;

    iget-object v0, v0, Lcom/google/glass/html/PagedWebView$6;->val$processedHtml:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$6$1;->this$1:Lcom/google/glass/html/PagedWebView$6;

    iget-object v0, v0, Lcom/google/glass/html/PagedWebView$6;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/html/PagedWebView$6$1;->this$1:Lcom/google/glass/html/PagedWebView$6;

    iget-object v1, v1, Lcom/google/glass/html/PagedWebView$6;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    iget-object v1, p0, Lcom/google/glass/html/PagedWebView$6$1;->this$1:Lcom/google/glass/html/PagedWebView$6;

    iget-object v1, v1, Lcom/google/glass/html/PagedWebView$6;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "AutoSizer.init(); UrlUniquifier.init(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\');"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/html/PagedWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method
