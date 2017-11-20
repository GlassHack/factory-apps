.class final Lcom/google/android/youtube/core/converter/http/cp;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/ck;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/ck;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/cp;->a:Lcom/google/android/youtube/core/converter/http/ck;

    .line 58
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V
    .locals 4

    .prologue
    .line 61
    const-class v0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;

    .line 62
    const-string v1, "action"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    const-string v2, "enabled"

    const-string v3, "permission"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->addAction(Ljava/lang/String;Z)Lcom/google/android/youtube/core/model/SocialSettings$Builder;

    .line 65
    return-void
.end method
