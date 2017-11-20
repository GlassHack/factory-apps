.class final Lcom/google/android/youtube/core/converter/http/b;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/a;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/b;->a:Lcom/google/android/youtube/core/converter/http/a;

    .line 47
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/youtube/core/model/Branding$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Branding$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->offer(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/k;->poll()Ljava/lang/Object;

    .line 55
    return-void
.end method
