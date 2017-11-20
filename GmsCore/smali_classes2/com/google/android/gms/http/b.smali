.class final Lcom/google/android/gms/http/b;
.super Lorg/apache/http/params/AbstractHttpParams;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/http/GoogleHttpClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/http/GoogleHttpClient;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/google/android/gms/http/b;->a:Lcom/google/android/gms/http/GoogleHttpClient;

    invoke-direct {p0}, Lorg/apache/http/params/AbstractHttpParams;-><init>()V

    return-void
.end method


# virtual methods
.method public final copy()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 585
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x0

    return-object v0
.end method

.method public final removeParameter(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 590
    const-string v0, "GoogleHttpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring unsupported remove operation for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v0, 0x1

    return v0
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    .locals 3

    .prologue
    .line 567
    const-string v0, "http.conn-manager.timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    const-string v0, "http.socket.timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    check-cast p2, Ljava/lang/Integer;

    .line 573
    iget-object v0, p0, Lcom/google/android/gms/http/b;->a:Lcom/google/android/gms/http/GoogleHttpClient;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/http/GoogleHttpClient;->c:I

    .line 580
    :cond_0
    :goto_0
    return-object p0

    .line 574
    :cond_1
    const-string v0, "http.connection.timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    check-cast p2, Ljava/lang/Integer;

    .line 576
    iget-object v0, p0, Lcom/google/android/gms/http/b;->a:Lcom/google/android/gms/http/GoogleHttpClient;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/http/GoogleHttpClient;->d:I

    goto :goto_0

    .line 578
    :cond_2
    const-string v0, "GoogleHttpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring unsupported parameter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
