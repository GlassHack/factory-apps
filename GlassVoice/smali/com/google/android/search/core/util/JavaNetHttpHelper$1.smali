.class Lcom/google/android/search/core/util/JavaNetHttpHelper$1;
.super Lcom/google/android/shared/util/NamedRunnable;
.source "JavaNetHttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/search/core/util/JavaNetHttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/search/core/util/JavaNetHttpHelper;


# direct methods
.method varargs constructor <init>(Lcom/google/android/search/core/util/JavaNetHttpHelper;Ljava/lang/String;[I)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [I

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper$1;->this$0:Lcom/google/android/search/core/util/JavaNetHttpHelper;

    invoke-direct {p0, p2, p3}, Lcom/google/android/shared/util/NamedRunnable;-><init>(Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 93
    iget-object v2, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper$1;->this$0:Lcom/google/android/search/core/util/JavaNetHttpHelper;

    invoke-static {v2}, Lcom/google/android/search/core/util/JavaNetHttpHelper;->access$000(Lcom/google/android/search/core/util/JavaNetHttpHelper;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/OkHttpClient;->getResponseCache()Ljava/net/ResponseCache;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/HttpResponseCache;

    .line 94
    .local v0, "cache":Lcom/squareup/okhttp/HttpResponseCache;
    if-eqz v0, :cond_0

    .line 96
    const-string v2, "JavaNetHttpHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP cache stats: hit_count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpResponseCache;->getHitCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", request_count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpResponseCache;->getRequestCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", network_count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpResponseCache;->getNetworkCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpResponseCache;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 104
    :try_start_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpResponseCache;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "JavaNetHttpHelper"

    const-string v3, "Error flushing cache."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "Flush HTTP cache"

    return-object v0
.end method
