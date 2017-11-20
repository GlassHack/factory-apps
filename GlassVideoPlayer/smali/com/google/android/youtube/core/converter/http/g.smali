.class final Lcom/google/android/youtube/core/converter/http/g;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/d;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/g;->a:Lcom/google/android/youtube/core/converter/http/d;

    .line 63
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    const-class v0, Lcom/google/android/youtube/core/model/a;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/a;

    const-string v1, "regions"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/a;->c(Ljava/lang/String;)Lcom/google/android/youtube/core/model/a;

    .line 67
    return-void
.end method
