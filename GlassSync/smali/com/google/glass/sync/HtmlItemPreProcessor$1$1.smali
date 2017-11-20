.class Lcom/google/glass/sync/HtmlItemPreProcessor$1$1;
.super Ljava/lang/Object;
.source "HtmlItemPreProcessor.java"


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

.field final synthetic val$currentItemHtml:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/HtmlItemPreProcessor$1;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/sync/HtmlItemPreProcessor$1;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$1;->this$1:Lcom/google/glass/sync/HtmlItemPreProcessor$1;

    iput-object p2, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$1;->val$currentItemHtml:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bodyInnerHtml(Ljava/lang/String;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$1;->val$currentItemHtml:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 138
    return-void
.end method
