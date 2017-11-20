.class final Lcom/google/android/youtube/core/converter/http/co;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/ck;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/ck;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/co;->a:Lcom/google/android/youtube/core/converter/http/ck;

    .line 51
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 54
    const-class v0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;

    .line 55
    const-string v1, "autoShare"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->autoSharing(Z)Lcom/google/android/youtube/core/model/SocialSettings$Builder;

    .line 56
    return-void
.end method
