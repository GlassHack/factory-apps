.class final Lcom/google/android/youtube/core/converter/http/cm;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/ck;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/ck;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/cm;->a:Lcom/google/android/youtube/core/converter/http/ck;

    .line 35
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SocialSettings$Builder;

    .line 39
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/SocialSettings$Builder;->addNetwork()V

    .line 40
    return-void
.end method
