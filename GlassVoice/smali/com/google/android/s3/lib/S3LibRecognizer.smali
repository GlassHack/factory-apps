.class public Lcom/google/android/s3/lib/S3LibRecognizer;
.super Ljava/lang/Object;
.source "S3LibRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/s3/lib/S3LibRecognizer$S3RequestProducerFactory;
    }
.end annotation


# instance fields
.field private final mNetworkEventListener:Lcom/google/android/s3/NetworkEventListener;

.field private final mProducerFactory:Lcom/google/android/s3/lib/S3LibRecognizer$S3RequestProducerFactory;

.field private final mResponseProcessor:Lcom/google/android/s3/NetworkRecognizerCallback;

.field private mRunner:Lcom/google/android/s3/NetworkRecognitionRunner;

.field private final mS3ConnectionFactory:Lcom/google/android/s3/S3ConnectionFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/s3/lib/S3LibRecognizer$S3RequestProducerFactory;Lcom/google/android/s3/NetworkRecognizerCallback;Lcom/google/android/s3/NetworkEventListener;Lcom/google/common/base/Supplier;)V
    .locals 2
    .param p1, "producerFactory"    # Lcom/google/android/s3/lib/S3LibRecognizer$S3RequestProducerFactory;
    .param p2, "responseProcessor"    # Lcom/google/android/s3/NetworkRecognizerCallback;
    .param p3, "networkEventListener"    # Lcom/google/android/s3/NetworkEventListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/s3/lib/S3LibRecognizer$S3RequestProducerFactory;",
            "Lcom/google/android/s3/NetworkRecognizerCallback;",
            "Lcom/google/android/s3/NetworkEventListener;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p4, "serverInfo":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/s3/lib/S3LibRecognizer;->mProducerFactory:Lcom/google/android/s3/lib/S3LibRecognizer$S3RequestProducerFactory;

    .line 65
    iput-object p2, p0, Lcom/google/android/s3/lib/S3LibRecognizer;->mResponseProcessor:Lcom/google/android/s3/NetworkRecognizerCallback;

    .line 66
    if-eqz p3, :cond_0

    .end local p3    # "networkEventListener":Lcom/google/android/s3/NetworkEventListener;
    :goto_0
    iput-object p3, p0, Lcom/google/android/s3/lib/S3LibRecognizer;->mNetworkEventListener:Lcom/google/android/s3/NetworkEventListener;

    .line 69
    new-instance v0, Lcom/google/android/s3/ConnectionFactoryImpl;

    invoke-direct {v0}, Lcom/google/android/s3/ConnectionFactoryImpl;-><init>()V

    .line 70
    .local v0, "connectionFactory":Lcom/google/android/s3/ConnectionFactory;
    new-instance v1, Lcom/google/android/s3/PairHttpConnectionFactory;

    invoke-direct {v1, p4, v0}, Lcom/google/android/s3/PairHttpConnectionFactory;-><init>(Lcom/google/common/base/Supplier;Lcom/google/android/s3/ConnectionFactory;)V

    iput-object v1, p0, Lcom/google/android/s3/lib/S3LibRecognizer;->mS3ConnectionFactory:Lcom/google/android/s3/S3ConnectionFactory;

    .line 71
    return-void

    .line 66
    .end local v0    # "connectionFactory":Lcom/google/android/s3/ConnectionFactory;
    .restart local p3    # "networkEventListener":Lcom/google/android/s3/NetworkEventListener;
    :cond_0
    new-instance p3, Lcom/google/android/s3/DefaultNetworkEventListener;

    .end local p3    # "networkEventListener":Lcom/google/android/s3/NetworkEventListener;
    invoke-direct {p3}, Lcom/google/android/s3/DefaultNetworkEventListener;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public start()V
    .locals 5

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/s3/lib/S3LibRecognizer;->mRunner:Lcom/google/android/s3/NetworkRecognitionRunner;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/google/android/s3/NetworkRecognitionRunner;

    iget-object v1, p0, Lcom/google/android/s3/lib/S3LibRecognizer;->mResponseProcessor:Lcom/google/android/s3/NetworkRecognizerCallback;

    iget-object v2, p0, Lcom/google/android/s3/lib/S3LibRecognizer;->mNetworkEventListener:Lcom/google/android/s3/NetworkEventListener;

    iget-object v3, p0, Lcom/google/android/s3/lib/S3LibRecognizer;->mS3ConnectionFactory:Lcom/google/android/s3/S3ConnectionFactory;

    iget-object v4, p0, Lcom/google/android/s3/lib/S3LibRecognizer;->mProducerFactory:Lcom/google/android/s3/lib/S3LibRecognizer$S3RequestProducerFactory;

    invoke-interface {v4}, Lcom/google/android/s3/lib/S3LibRecognizer$S3RequestProducerFactory;->createProducers()Lcom/google/android/speech/network/producers/S3RequestProducers;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/s3/NetworkRecognitionRunner;-><init>(Lcom/google/android/s3/NetworkRecognizerCallback;Lcom/google/android/s3/NetworkEventListener;Lcom/google/android/s3/S3ConnectionFactory;Lcom/google/android/speech/network/producers/S3RequestProducers;)V

    iput-object v0, p0, Lcom/google/android/s3/lib/S3LibRecognizer;->mRunner:Lcom/google/android/s3/NetworkRecognitionRunner;

    .line 80
    iget-object v0, p0, Lcom/google/android/s3/lib/S3LibRecognizer;->mRunner:Lcom/google/android/s3/NetworkRecognitionRunner;

    invoke-virtual {v0}, Lcom/google/android/s3/NetworkRecognitionRunner;->start()V

    .line 82
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/s3/lib/S3LibRecognizer;->mRunner:Lcom/google/android/s3/NetworkRecognitionRunner;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/android/s3/lib/S3LibRecognizer;->mRunner:Lcom/google/android/s3/NetworkRecognitionRunner;

    invoke-virtual {v0}, Lcom/google/android/s3/NetworkRecognitionRunner;->close()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/s3/lib/S3LibRecognizer;->mRunner:Lcom/google/android/s3/NetworkRecognitionRunner;

    .line 93
    :cond_0
    return-void
.end method
