.class Lcom/google/glass/sync/HtmlItemPreProcessor$1$4;
.super Ljava/lang/Object;
.source "HtmlItemPreProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/HtmlItemPreProcessor$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/sync/HtmlItemPreProcessor$1;

.field final synthetic val$webView:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/HtmlItemPreProcessor$1;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/sync/HtmlItemPreProcessor$1;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$4;->this$1:Lcom/google/glass/sync/HtmlItemPreProcessor$1;

    iput-object p2, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$4;->val$webView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$4;->val$webView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/html/PagedWebView;

    invoke-virtual {v0}, Lcom/google/glass/html/PagedWebView;->release()V

    .line 204
    return-void
.end method
