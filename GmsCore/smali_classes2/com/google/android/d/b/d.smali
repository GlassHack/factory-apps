.class final Lcom/google/android/d/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/d/b/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/d/b/d;->a:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/google/android/d/b/d;->b:Lorg/apache/http/HttpEntity;

    .line 85
    return-void
.end method


# virtual methods
.method public final a(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 89
    iget-object v1, p0, Lcom/google/android/d/b/d;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 90
    const-string v1, "X-HTTP-Method-Override"

    iget-object v2, p0, Lcom/google/android/d/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/google/android/d/b/d;->b:Lorg/apache/http/HttpEntity;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 93
    return-object v0
.end method
