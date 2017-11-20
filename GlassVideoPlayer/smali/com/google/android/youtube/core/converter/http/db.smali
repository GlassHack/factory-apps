.class final Lcom/google/android/youtube/core/converter/http/db;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 110
    const-class v0, Lcom/google/android/youtube/core/model/Subscription$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription$Builder;

    .line 111
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Subscription$Builder;->username(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;

    .line 112
    const-string v1, "display"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Subscription$Builder;->displayUsername(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;

    .line 116
    :cond_0
    return-void
.end method
