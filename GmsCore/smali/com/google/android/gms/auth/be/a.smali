.class public final Lcom/google/android/gms/auth/be/a;
.super Lcom/android/d/a/g;
.source "SourceFile"


# static fields
.field private static final b:Lorg/apache/http/HttpEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/auth/be/a;->b:Lorg/apache/http/HttpEntity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x1

    const-string v1, "unused/0"

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/auth/be/h;->a(Landroid/content/Context;ZZLjava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/d/a/g;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/d/p;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/android/d/a/g;->a(Lcom/android/d/p;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/google/android/gms/common/server/n;

    if-eqz v1, :cond_0

    .line 47
    sget-object v1, Lcom/google/android/gms/auth/be/a;->b:Lorg/apache/http/HttpEntity;

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 48
    const/16 v1, 0xc8

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 50
    :cond_0
    return-object v0
.end method
