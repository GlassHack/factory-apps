.class public interface abstract Lcom/google/glass/net/HttpRequestDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close()V
.end method

.method public abstract postWithHeaders(Ljava/lang/String;Ljava/util/Map;[B)Lcom/google/glass/net/PendingHttpRequest;
.end method

.method public abstract put(Ljava/lang/String;Ljava/util/Map;)Lcom/google/glass/net/PendingHttpRequest;
.end method

.method public abstract putWithFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;JJ)Lcom/google/glass/net/PendingHttpRequest;
.end method

.method public abstract putWithStream(Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/String;J)Lcom/google/glass/net/PendingHttpRequest;
.end method
