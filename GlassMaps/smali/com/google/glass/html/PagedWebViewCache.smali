.class public Lcom/google/glass/html/PagedWebViewCache;
.super Landroid/util/LruCache;
.source "SourceFile"


# static fields
.field private static final CACHE_SIZE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 24
    return-void
.end method

.method public static generateKey(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Lcom/google/glass/html/PagedWebViewCache$Key;
    .locals 3

    .prologue
    .line 87
    invoke-static {p0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/glass/timeline/TimelineItemUtils;->getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/google/glass/html/PagedWebViewCache;->generateKey(Ljava/lang/String;JZ)Lcom/google/glass/html/PagedWebViewCache$Key;

    move-result-object v0

    return-object v0
.end method

.method public static generateKey(Ljava/lang/String;JZ)Lcom/google/glass/html/PagedWebViewCache$Key;
    .locals 6

    .prologue
    .line 103
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 104
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 105
    new-instance v0, Lcom/google/glass/html/PagedWebViewCache$Key;

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/html/PagedWebViewCache$Key;-><init>(Ljava/lang/String;JZLcom/google/glass/html/PagedWebViewCache$1;)V

    return-object v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected entryRemoved(ZLcom/google/glass/html/PagedWebViewCache$Key;Lcom/google/glass/html/PagedWebView;Lcom/google/glass/html/PagedWebView;)V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/html/PagedWebViewCache$1;

    invoke-direct {v1, p0, p3}, Lcom/google/glass/html/PagedWebViewCache$1;-><init>(Lcom/google/glass/html/PagedWebViewCache;Lcom/google/glass/html/PagedWebView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/google/glass/html/PagedWebViewCache$Key;

    check-cast p3, Lcom/google/glass/html/PagedWebView;

    check-cast p4, Lcom/google/glass/html/PagedWebView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/glass/html/PagedWebViewCache;->entryRemoved(ZLcom/google/glass/html/PagedWebViewCache$Key;Lcom/google/glass/html/PagedWebView;Lcom/google/glass/html/PagedWebView;)V

    return-void
.end method
