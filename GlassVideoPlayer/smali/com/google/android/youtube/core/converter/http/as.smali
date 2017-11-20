.class final Lcom/google/android/youtube/core/converter/http/as;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/ak;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/ak;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/as;->a:Lcom/google/android/youtube/core/converter/http/ak;

    .line 117
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 120
    const-class v0, Lcom/google/android/youtube/core/model/Event$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event$Builder;

    .line 121
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Event$Builder;->target(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;

    .line 122
    const-string v1, "display"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->displayUsername(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;

    .line 126
    :cond_0
    return-void
.end method
