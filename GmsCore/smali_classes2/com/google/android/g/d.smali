.class final Lcom/google/android/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic a:Lcom/google/android/g/a;


# direct methods
.method private constructor <init>(Lcom/google/android/g/a;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/google/android/g/d;->a:Lcom/google/android/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/g/a;B)V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/google/android/g/d;-><init>(Lcom/google/android/g/a;)V

    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/g/d;->a:Lcom/google/android/g/a;

    invoke-static {v0}, Lcom/google/android/g/a;->a(Lcom/google/android/g/a;)Lcom/google/android/g/e;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/g/e;->a:Ljava/lang/String;

    iget v2, v0, Lcom/google/android/g/e;->b:I

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    .line 456
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {p1}, Lcom/google/android/g/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/google/android/g/e;->b:I

    iget-object v0, v0, Lcom/google/android/g/e;->a:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    return-void
.end method
