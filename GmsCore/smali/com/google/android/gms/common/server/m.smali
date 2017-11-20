.class public final Lcom/google/android/gms/common/server/m;
.super Lcom/google/android/g/l;
.source "SourceFile"


# static fields
.field private static final b:Lorg/apache/http/HttpEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/common/server/m;->b:Lorg/apache/http/HttpEntity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/android/g/l;-><init>(Landroid/content/Context;Z)V

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/d/p;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lcom/google/android/g/l;->a(Lcom/android/d/p;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/google/android/gms/common/server/n;

    if-eqz v1, :cond_0

    .line 40
    sget-object v1, Lcom/google/android/gms/common/server/m;->b:Lorg/apache/http/HttpEntity;

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 41
    const/16 v1, 0xc8

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 43
    :cond_0
    return-object v0
.end method
