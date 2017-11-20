.class final Lcom/google/android/youtube/core/converter/http/ap;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/ak;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/ak;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/ap;->a:Lcom/google/android/youtube/core/converter/http/ak;

    .line 99
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 102
    const-class v0, Lcom/google/android/youtube/core/model/Event$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event$Builder;

    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Util;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->when(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Event$Builder;

    .line 103
    return-void
.end method
