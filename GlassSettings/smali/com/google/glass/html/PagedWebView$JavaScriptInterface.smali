.class public Lcom/google/glass/html/PagedWebView$JavaScriptInterface;
.super Ljava/lang/Object;
.source "PagedWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/html/PagedWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JavaScriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/PagedWebView;


# direct methods
.method public constructor <init>(Lcom/google/glass/html/PagedWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/html/PagedWebView;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/html/PagedWebView$JavaScriptInterface;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/PagedWebView$JavaScriptInterface;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->parseContentWidth(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private parseContentWidth(Ljava/lang/String;)I
    .locals 6
    .param p1, "contentWidth"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v2, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v2}, Lcom/google/glass/html/PagedWebView;->access$600(Lcom/google/glass/html/PagedWebView;)I

    move-result v0

    .line 195
    .local v0, "contentWidthPixels":I
    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 199
    :goto_0
    return v0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/google/glass/html/PagedWebView;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Received bad content width from JS: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public autoSizingComplete()V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lcom/google/glass/html/PagedWebView;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "autoSizingComplete for item: %s, onlyLoadingFirstPage: %s, isAllocated: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    .line 169
    invoke-static {v4}, Lcom/google/glass/html/PagedWebView;->access$000(Lcom/google/glass/html/PagedWebView;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v4}, Lcom/google/glass/html/PagedWebView;->access$700(Lcom/google/glass/html/PagedWebView;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v4}, Lcom/google/glass/html/PagedWebView;->access$200(Lcom/google/glass/html/PagedWebView;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 168
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Lcom/google/glass/html/PagedWebView;->access$200(Lcom/google/glass/html/PagedWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$2;

    invoke-direct {v1, p0}, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$2;-><init>(Lcom/google/glass/html/PagedWebView$JavaScriptInterface;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public paginationComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "contentWidth"    # Ljava/lang/String;
    .param p2, "contentHeight"    # Ljava/lang/String;
    .param p3, "skipCoverPage"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lcom/google/glass/html/PagedWebView;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "paginationComplete for item: %s to: %s x %s, %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v4}, Lcom/google/glass/html/PagedWebView;->access$000(Lcom/google/glass/html/PagedWebView;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Lcom/google/glass/html/PagedWebView;->access$200(Lcom/google/glass/html/PagedWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;

    invoke-direct {v1, p0, p3, p1}, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;-><init>(Lcom/google/glass/html/PagedWebView$JavaScriptInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
