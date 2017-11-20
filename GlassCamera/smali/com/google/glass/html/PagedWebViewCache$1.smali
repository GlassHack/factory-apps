.class Lcom/google/glass/html/PagedWebViewCache$1;
.super Ljava/lang/Object;
.source "PagedWebViewCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/PagedWebViewCache;->entryRemoved(ZLcom/google/glass/html/PagedWebViewCache$Key;Lcom/google/glass/html/PagedWebView;Lcom/google/glass/html/PagedWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/PagedWebViewCache;

.field final synthetic val$oldValue:Lcom/google/glass/html/PagedWebView;


# direct methods
.method constructor <init>(Lcom/google/glass/html/PagedWebViewCache;Lcom/google/glass/html/PagedWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/html/PagedWebViewCache;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/glass/html/PagedWebViewCache$1;->this$0:Lcom/google/glass/html/PagedWebViewCache;

    iput-object p2, p0, Lcom/google/glass/html/PagedWebViewCache$1;->val$oldValue:Lcom/google/glass/html/PagedWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/html/PagedWebViewCache$1;->val$oldValue:Lcom/google/glass/html/PagedWebView;

    invoke-virtual {v0}, Lcom/google/glass/html/PagedWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/google/glass/html/PagedWebViewCache$1;->val$oldValue:Lcom/google/glass/html/PagedWebView;

    invoke-virtual {v0}, Lcom/google/glass/html/PagedWebView;->release()V

    .line 41
    :cond_0
    return-void
.end method
