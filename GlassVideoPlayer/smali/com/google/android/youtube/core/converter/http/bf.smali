.class final Lcom/google/android/youtube/core/converter/http/bf;
.super Lcom/google/android/youtube/core/converter/http/be;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/http/be;-><init>()V

    .line 1
    return-void
.end method

.method private static b(Lorg/apache/http/HttpEntity;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-static {p1}, Lcom/google/android/youtube/core/converter/http/bf;->b(Lorg/apache/http/HttpEntity;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
