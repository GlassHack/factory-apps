.class final Lcom/google/android/g/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# instance fields
.field final synthetic a:Lcom/google/android/g/f;

.field private final b:Lorg/apache/http/client/ResponseHandler;

.field private final c:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final d:Lcom/google/android/f/a;


# direct methods
.method private constructor <init>(Lcom/google/android/g/f;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/f/a;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/google/android/g/i;->a:Lcom/google/android/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p2, p0, Lcom/google/android/g/i;->b:Lorg/apache/http/client/ResponseHandler;

    .line 530
    iput-object p3, p0, Lcom/google/android/g/i;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 531
    iput-object p4, p0, Lcom/google/android/g/i;->d:Lcom/google/android/f/a;

    .line 532
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/g/f;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/f/a;B)V
    .locals 0

    .prologue
    .line 522
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/g/i;-><init>(Lcom/google/android/g/f;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/f/a;)V

    return-void
.end method


# virtual methods
.method public final handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/android/g/i;->b:Lorg/apache/http/client/ResponseHandler;

    iget-object v1, p0, Lcom/google/android/g/i;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v2, p0, Lcom/google/android/g/i;->d:Lcom/google/android/f/a;

    invoke-static {v1, p1, v2}, Lcom/google/android/f/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;Lcom/google/android/f/a;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
