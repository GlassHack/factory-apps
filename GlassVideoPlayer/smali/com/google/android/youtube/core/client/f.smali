.class public final Lcom/google/android/youtube/core/client/f;
.super Lcom/google/android/youtube/core/client/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/client/t;


# instance fields
.field private final g:Lcom/google/android/youtube/core/async/ae;

.field private final h:Lcom/google/android/youtube/core/utils/m;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/utils/m;[B[BLjava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/client/e;-><init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;)V

    .line 54
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 55
    const-string v1, "developerKey cannot be null or empty"

    .line 54
    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/client/f;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    const-string v0, "serial cannot be null or empty"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/client/f;->j:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/google/android/youtube/core/client/f;->h:Lcom/google/android/youtube/core/utils/m;

    .line 63
    invoke-direct {p0, p5}, Lcom/google/android/youtube/core/client/f;->a([B)Lcom/google/android/youtube/core/async/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/client/f;->g:Lcom/google/android/youtube/core/async/ae;

    .line 64
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a([B)Lcom/google/android/youtube/core/async/ae;
    .locals 2

    .prologue
    .line 67
    .line 68
    new-instance v0, Lcom/google/android/youtube/core/converter/http/df;

    sget-object v1, Lcom/google/android/youtube/core/converter/http/HttpMethod;->POST:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/http/df;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    .line 69
    new-instance v1, Lcom/google/android/youtube/core/converter/http/aj;

    invoke-direct {v1, p1}, Lcom/google/android/youtube/core/converter/http/aj;-><init>([B)V

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/client/f;->a(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/be;)Lcom/google/android/youtube/core/async/x;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/async/h;)V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/core/client/f;->h:Lcom/google/android/youtube/core/utils/m;

    if-nez v0, :cond_0

    const-string v0, "https://www.google.com/youtube/accounts/registerDevice"

    .line 76
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "?developer=%s&serialNumber=%s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/core/client/f;->i:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/youtube/core/client/f;->j:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/google/android/youtube/core/client/f;->g:Lcom/google/android/youtube/core/async/ae;

    invoke-interface {v1, v0, p1}, Lcom/google/android/youtube/core/async/ae;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V

    .line 80
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/client/f;->h:Lcom/google/android/youtube/core/utils/m;

    const-string v1, "https://www.google.com/youtube/accounts/registerDevice"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/utils/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
