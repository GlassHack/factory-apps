.class Lcom/google/glass/search/results/ViewportHostingWebView$2;
.super Ljava/lang/Object;
.source "ViewportHostingWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/search/results/ViewportHostingWebView;->notifyViewportSetChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/search/results/ViewportHostingWebView;

.field final synthetic val$numCards:I


# direct methods
.method constructor <init>(Lcom/google/glass/search/results/ViewportHostingWebView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/search/results/ViewportHostingWebView;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/glass/search/results/ViewportHostingWebView$2;->this$0:Lcom/google/glass/search/results/ViewportHostingWebView;

    iput p2, p0, Lcom/google/glass/search/results/ViewportHostingWebView$2;->val$numCards:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 222
    iget-object v4, p0, Lcom/google/glass/search/results/ViewportHostingWebView$2;->this$0:Lcom/google/glass/search/results/ViewportHostingWebView;

    invoke-static {v4}, Lcom/google/glass/search/results/ViewportHostingWebView;->access$200(Lcom/google/glass/search/results/ViewportHostingWebView;)Lcom/google/glass/search/results/ViewportHostingWebView$ViewportCountListener;

    move-result-object v4

    iget v5, p0, Lcom/google/glass/search/results/ViewportHostingWebView$2;->val$numCards:I

    invoke-interface {v4, v5}, Lcom/google/glass/search/results/ViewportHostingWebView$ViewportCountListener;->onViewportCountChanged(I)V

    .line 224
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/glass/search/results/ViewportHostingWebView$2;->this$0:Lcom/google/glass/search/results/ViewportHostingWebView;

    invoke-static {v6}, Lcom/google/glass/search/results/ViewportHostingWebView;->access$300(Lcom/google/glass/search/results/ViewportHostingWebView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 226
    .local v0, "elapsedTime":J
    iget-object v4, p0, Lcom/google/glass/search/results/ViewportHostingWebView$2;->this$0:Lcom/google/glass/search/results/ViewportHostingWebView;

    invoke-static {v4}, Lcom/google/glass/search/results/ViewportHostingWebView;->access$400(Lcom/google/glass/search/results/ViewportHostingWebView;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    iget-object v4, p0, Lcom/google/glass/search/results/ViewportHostingWebView$2;->this$0:Lcom/google/glass/search/results/ViewportHostingWebView;

    invoke-static {v4}, Lcom/google/glass/search/results/ViewportHostingWebView;->access$400(Lcom/google/glass/search/results/ViewportHostingWebView;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 229
    .local v3, "stabilizeMsg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 230
    .local v2, "params":Landroid/os/Bundle;
    const-string v4, "count"

    iget v5, p0, Lcom/google/glass/search/results/ViewportHostingWebView$2;->val$numCards:I

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    const-string v4, "time"

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 232
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 234
    iget-object v4, p0, Lcom/google/glass/search/results/ViewportHostingWebView$2;->this$0:Lcom/google/glass/search/results/ViewportHostingWebView;

    invoke-static {v4}, Lcom/google/glass/search/results/ViewportHostingWebView;->access$400(Lcom/google/glass/search/results/ViewportHostingWebView;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 235
    return-void
.end method
