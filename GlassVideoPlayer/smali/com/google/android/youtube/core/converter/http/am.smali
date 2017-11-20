.class final Lcom/google/android/youtube/core/converter/http/am;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/ak;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/ak;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/am;->a:Lcom/google/android/youtube/core/converter/http/ak;

    .line 52
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/google/android/youtube/core/model/Event$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event$Builder;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Event$Builder;->subject(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;

    .line 56
    return-void
.end method
