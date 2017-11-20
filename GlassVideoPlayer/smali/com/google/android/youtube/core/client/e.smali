.class public abstract Lcom/google/android/youtube/core/client/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/util/concurrent/Executor;

.field protected final b:Lorg/apache/http/client/HttpClient;

.field protected final c:Lcom/google/android/youtube/core/utils/a;

.field protected final d:Ljava/lang/String;

.field protected final e:Lcom/google/android/youtube/core/converter/http/df;

.field protected final f:Lcom/google/android/youtube/core/converter/l;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-string v0, "executor can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/e;->a:Ljava/util/concurrent/Executor;

    .line 111
    const-string v0, "httpClient can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/e;->b:Lorg/apache/http/client/HttpClient;

    .line 112
    new-instance v0, Lcom/google/android/youtube/core/converter/http/df;

    sget-object v1, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/http/df;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/client/e;->e:Lcom/google/android/youtube/core/converter/http/df;

    .line 113
    iput-object v2, p0, Lcom/google/android/youtube/core/client/e;->f:Lcom/google/android/youtube/core/converter/l;

    .line 114
    iput-object v2, p0, Lcom/google/android/youtube/core/client/e;->d:Ljava/lang/String;

    .line 115
    iput-object v2, p0, Lcom/google/android/youtube/core/client/e;->c:Lcom/google/android/youtube/core/utils/a;

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/l;Ljava/lang/String;Lcom/google/android/youtube/core/utils/a;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "executor can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/e;->a:Ljava/util/concurrent/Executor;

    .line 66
    const-string v0, "httpClient can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/e;->b:Lorg/apache/http/client/HttpClient;

    .line 67
    const-string v0, "xmlParser can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/l;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/e;->f:Lcom/google/android/youtube/core/converter/l;

    .line 68
    const-string v0, "cachePath can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/e;->d:Ljava/lang/String;

    .line 69
    const-string v0, "clock can\'t be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/e;->c:Lcom/google/android/youtube/core/utils/a;

    .line 70
    new-instance v0, Lcom/google/android/youtube/core/converter/http/df;

    sget-object v1, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/http/df;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/client/e;->e:Lcom/google/android/youtube/core/converter/http/df;

    .line 71
    return-void
.end method

.method protected static a(Lcom/google/android/youtube/core/utils/g;Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ae;)Lcom/google/android/youtube/core/async/p;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/google/android/youtube/core/async/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/youtube/core/async/p;-><init>(Lcom/google/android/youtube/core/utils/g;Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ae;)V

    return-object v0
.end method

.method protected static a(I)Lcom/google/android/youtube/core/cache/b;
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/google/android/youtube/core/cache/b;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/cache/b;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ae;J)Lcom/google/android/youtube/core/async/al;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/core/client/e;->c:Lcom/google/android/youtube/core/utils/a;

    const-string v1, "this instance does not contain a clock"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/google/android/youtube/core/client/e;->c:Lcom/google/android/youtube/core/utils/a;

    invoke-static {p1, p2, v0, p3, p4}, Lcom/google/android/youtube/core/async/al;->a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ae;Lcom/google/android/youtube/core/utils/a;J)Lcom/google/android/youtube/core/async/al;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/google/android/youtube/core/async/ae;)Lcom/google/android/youtube/core/async/c;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/core/client/e;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/c;->a(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/ae;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/be;)Lcom/google/android/youtube/core/async/x;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/google/android/youtube/core/async/x;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/e;->b:Lorg/apache/http/client/HttpClient;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/youtube/core/async/x;-><init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/be;)V

    return-object v0
.end method

.method protected final a()V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/core/client/e;->d:Ljava/lang/String;

    const-string v1, "this instance does not support persistent caching"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/core/client/e;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/e;->d:Ljava/lang/String;

    const-wide/32 v2, 0x1400000

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/youtube/core/cache/c;->a(Ljava/util/concurrent/Executor;Ljava/lang/String;J)V

    .line 130
    return-void
.end method

.method protected final b()Lcom/google/android/youtube/core/cache/c;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/core/client/e;->d:Ljava/lang/String;

    const-string v1, "this instance does not support persistent caching"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v0, Lcom/google/android/youtube/core/cache/i;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/e;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/cache/i;-><init>(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/google/android/youtube/core/client/e;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/cache/i;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/youtube/core/cache/c;

    move-result-object v0

    .line 158
    return-object v0
.end method
