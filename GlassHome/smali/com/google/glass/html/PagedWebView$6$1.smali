.class Lcom/google/glass/html/PagedWebView$6$1;
.super Ljava/lang/Object;
.source "PagedWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/PagedWebView$6;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/html/PagedWebView$6;


# direct methods
.method constructor <init>(Lcom/google/glass/html/PagedWebView$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/html/PagedWebView$6;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/google/glass/html/PagedWebView$6$1;->this$1:Lcom/google/glass/html/PagedWebView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 558
    iget-object v1, p0, Lcom/google/glass/html/PagedWebView$6$1;->this$1:Lcom/google/glass/html/PagedWebView$6;

    iget-object v1, v1, Lcom/google/glass/html/PagedWebView$6;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v1}, Lcom/google/glass/html/PagedWebView;->access$200(Lcom/google/glass/html/PagedWebView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    iget-object v1, p0, Lcom/google/glass/html/PagedWebView$6$1;->this$1:Lcom/google/glass/html/PagedWebView$6;

    iget-object v1, v1, Lcom/google/glass/html/PagedWebView$6;->this$0:Lcom/google/glass/html/PagedWebView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/glass/html/PagedWebView;->access$1702(Lcom/google/glass/html/PagedWebView;Z)Z

    .line 563
    iget-object v1, p0, Lcom/google/glass/html/PagedWebView$6$1;->this$1:Lcom/google/glass/html/PagedWebView$6;

    iget-object v1, v1, Lcom/google/glass/html/PagedWebView$6;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v1}, Lcom/google/glass/html/PagedWebView;->access$1100(Lcom/google/glass/html/PagedWebView;)V

    .line 565
    iget-object v1, p0, Lcom/google/glass/html/PagedWebView$6$1;->this$1:Lcom/google/glass/html/PagedWebView$6;

    iget-object v1, v1, Lcom/google/glass/html/PagedWebView$6;->val$processedHtml:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/google/glass/html/PagedWebView$6$1;->this$1:Lcom/google/glass/html/PagedWebView$6;

    iget-object v1, v1, Lcom/google/glass/html/PagedWebView$6;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/html/PagedWebView$6$1;->this$1:Lcom/google/glass/html/PagedWebView$6;

    iget-object v2, v2, Lcom/google/glass/html/PagedWebView$6;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x15

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "itemTag":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/html/PagedWebView$6$1;->this$1:Lcom/google/glass/html/PagedWebView$6;

    iget-object v1, v1, Lcom/google/glass/html/PagedWebView$6;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x29

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "AutoSizer.init(); UrlUniquifier.init(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/html/PagedWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method
