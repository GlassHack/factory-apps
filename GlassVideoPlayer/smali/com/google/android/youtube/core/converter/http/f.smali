.class final Lcom/google/android/youtube/core/converter/http/f;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/d;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/f;->a:Lcom/google/android/youtube/core/converter/http/d;

    .line 49
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/youtube/core/model/a;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/a;-><init>()V

    .line 53
    const-string v1, "term"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/a;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/a;

    move-result-object v0

    .line 54
    const-string v1, "label"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/a;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/a;

    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->offer(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    const-class v0, Lcom/google/android/youtube/core/model/a;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/a;->a()Lcom/google/android/youtube/core/model/Category;

    move-result-object v1

    .line 59
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method
