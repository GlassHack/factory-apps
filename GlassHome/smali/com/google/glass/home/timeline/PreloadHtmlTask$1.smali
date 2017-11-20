.class Lcom/google/glass/home/timeline/PreloadHtmlTask$1;
.super Ljava/lang/Object;
.source "PreloadHtmlTask.java"

# interfaces
.implements Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/PreloadHtmlTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/PreloadHtmlTask;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/PreloadHtmlTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/PreloadHtmlTask;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask$1;->this$0:Lcom/google/glass/home/timeline/PreloadHtmlTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSiteLoaded()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/home/timeline/PreloadHtmlTask$1;->this$0:Lcom/google/glass/home/timeline/PreloadHtmlTask;

    invoke-static {v0}, Lcom/google/glass/home/timeline/PreloadHtmlTask;->access$000(Lcom/google/glass/home/timeline/PreloadHtmlTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 34
    return-void
.end method
