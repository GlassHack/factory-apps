.class Lcom/google/glass/voice/network/VoiceSearchContainer$6;
.super Ljava/lang/Object;
.source "VoiceSearchContainer.java"

# interfaces
.implements Lcom/google/android/search/core/util/HttpHelper$UrlRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/VoiceSearchContainer;->createNetworkParams()Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/VoiceSearchContainer;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/network/VoiceSearchContainer;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$6;->this$0:Lcom/google/glass/voice/network/VoiceSearchContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 345
    return-object p1
.end method
