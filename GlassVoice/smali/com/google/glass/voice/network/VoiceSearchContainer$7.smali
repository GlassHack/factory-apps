.class Lcom/google/glass/voice/network/VoiceSearchContainer$7;
.super Ljava/lang/Object;
.source "VoiceSearchContainer.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/VoiceSearchContainer;->createNetworkParams()Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/VoiceSearchContainer;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/network/VoiceSearchContainer;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$7;->this$0:Lcom/google/glass/voice/network/VoiceSearchContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$7;->this$0:Lcom/google/glass/voice/network/VoiceSearchContainer;

    invoke-static {v0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->access$100(Lcom/google/glass/voice/network/VoiceSearchContainer;)Lcom/google/android/speech/SpeechSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v0

    iget-object v0, v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->networkRecognizer:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$7;->get()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    move-result-object v0

    return-object v0
.end method
