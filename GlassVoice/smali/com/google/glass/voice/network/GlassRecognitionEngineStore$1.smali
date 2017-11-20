.class Lcom/google/glass/voice/network/GlassRecognitionEngineStore$1;
.super Lcom/google/glass/voice/network/GlassVoiceSearchRequestProducerFactory;
.source "GlassRecognitionEngineStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/GlassRecognitionEngineStore;->getVoiceSearchRequestProducerFactory(Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;)Lcom/google/android/speech/network/producers/RequestProducerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/GlassRecognitionEngineStore;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/GlassRecognitionEngineStore;Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/params/NetworkRequestProducerParams;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/network/GlassRecognitionEngineStore;
    .param p2, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "nrpp"    # Lcom/google/android/speech/params/NetworkRequestProducerParams;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/glass/voice/network/GlassRecognitionEngineStore$1;->this$0:Lcom/google/glass/voice/network/GlassRecognitionEngineStore;

    invoke-direct {p0, p2, p3}, Lcom/google/glass/voice/network/GlassVoiceSearchRequestProducerFactory;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/params/NetworkRequestProducerParams;)V

    return-void
.end method


# virtual methods
.method public getRequestProducers(Ljava/io/InputStream;)Lcom/google/android/speech/network/producers/S3RequestProducers;
    .locals 2
    .param p1, "audioInputStream"    # Ljava/io/InputStream;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/google/glass/voice/network/GlassVoiceSearchRequestProducerFactory;->getRequestProducers(Ljava/io/InputStream;)Lcom/google/android/speech/network/producers/S3RequestProducers;

    move-result-object v0

    .line 105
    .local v0, "producers":Lcom/google/android/speech/network/producers/S3RequestProducers;
    new-instance v1, Lcom/google/glass/voice/network/GlassS3RequestProducers;

    invoke-direct {v1, v0}, Lcom/google/glass/voice/network/GlassS3RequestProducers;-><init>(Lcom/google/android/speech/network/producers/S3RequestProducers;)V

    return-object v1
.end method
