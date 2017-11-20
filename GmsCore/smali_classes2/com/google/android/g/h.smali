.class final Lcom/google/android/g/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/g/a;

.field final b:Lcom/google/android/f/a;

.field final synthetic c:Lcom/google/android/g/f;


# direct methods
.method private constructor <init>(Lcom/google/android/g/f;Lcom/google/android/g/a;Lcom/google/android/f/a;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/g/h;->c:Lcom/google/android/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-object p2, p0, Lcom/google/android/g/h;->a:Lcom/google/android/g/a;

    .line 414
    iput-object p3, p0, Lcom/google/android/g/h;->b:Lcom/google/android/f/a;

    .line 415
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/g/f;Lcom/google/android/g/a;Lcom/google/android/f/a;B)V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/g/h;-><init>(Lcom/google/android/g/f;Lcom/google/android/g/a;Lcom/google/android/f/a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/g/h;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/android/g/h;->a:Lcom/google/android/g/a;

    iget-object v1, p0, Lcom/google/android/g/h;->b:Lcom/google/android/f/a;

    invoke-static {p1, v1}, Lcom/google/android/f/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/f/a;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/g/a;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/g/h;->b:Lcom/google/android/f/a;

    invoke-static {p1, v0, v1}, Lcom/google/android/f/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;Lcom/google/android/f/a;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
