.class final Lcom/google/android/youtube/core/converter/http/cl;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/ck;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/ck;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/cl;->a:Lcom/google/android/youtube/core/converter/http/ck;

    .line 29
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/SocialSettings$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->offer(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method
