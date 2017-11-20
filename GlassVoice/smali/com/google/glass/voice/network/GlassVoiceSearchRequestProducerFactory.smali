.class public Lcom/google/glass/voice/network/GlassVoiceSearchRequestProducerFactory;
.super Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;
.source "GlassVoiceSearchRequestProducerFactory.java"


# instance fields
.field final executor:Ljava/util/concurrent/ExecutorService;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/params/NetworkRequestProducerParams;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "nrpp"    # Lcom/google/android/speech/params/NetworkRequestProducerParams;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/android/speech/network/producers/VoiceSearchRequestProducerFactory;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/params/NetworkRequestProducerParams;)V

    .line 20
    iput-object p1, p0, Lcom/google/glass/voice/network/GlassVoiceSearchRequestProducerFactory;->executor:Ljava/util/concurrent/ExecutorService;

    .line 21
    return-void
.end method
