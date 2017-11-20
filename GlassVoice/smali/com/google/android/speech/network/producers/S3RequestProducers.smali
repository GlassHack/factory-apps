.class public Lcom/google/android/speech/network/producers/S3RequestProducers;
.super Ljava/lang/Object;
.source "S3RequestProducers.java"


# instance fields
.field private final mProducers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/s3/producers/S3RequestProducer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/google/android/s3/producers/S3RequestProducer;)V
    .locals 1
    .param p1, "producers"    # [Lcom/google/android/s3/producers/S3RequestProducer;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/network/producers/S3RequestProducers;->mProducers:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public closeAll()V
    .locals 3

    .prologue
    .line 60
    iget-object v2, p0, Lcom/google/android/speech/network/producers/S3RequestProducers;->mProducers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/s3/producers/S3RequestProducer;

    .line 61
    .local v1, "producer":Lcom/google/android/s3/producers/S3RequestProducer;
    invoke-static {v1}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 63
    .end local v1    # "producer":Lcom/google/android/s3/producers/S3RequestProducer;
    :cond_0
    iget-object v2, p0, Lcom/google/android/speech/network/producers/S3RequestProducers;->mProducers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 64
    return-void
.end method

.method public getRequest()Lcom/google/speech/s3/S3$S3Request;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 41
    iget-object v2, p0, Lcom/google/android/speech/network/producers/S3RequestProducers;->mProducers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/speech/network/producers/S3RequestProducers;->mProducers:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/speech/network/producers/S3RequestProducers;->mProducers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/s3/producers/S3RequestProducer;

    invoke-interface {v2}, Lcom/google/android/s3/producers/S3RequestProducer;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 56
    :goto_0
    return-object v2

    .line 44
    :cond_1
    iget-object v2, p0, Lcom/google/android/speech/network/producers/S3RequestProducers;->mProducers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 45
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/s3/producers/S3RequestProducer;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/s3/producers/S3RequestProducer;

    .line 47
    .local v1, "producer":Lcom/google/android/s3/producers/S3RequestProducer;
    invoke-interface {v1}, Lcom/google/android/s3/producers/S3RequestProducer;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    invoke-static {v1}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 52
    :cond_3
    invoke-interface {v1}, Lcom/google/android/s3/producers/S3RequestProducer;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    invoke-interface {v1}, Lcom/google/android/s3/producers/S3RequestProducer;->next()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v2

    goto :goto_0

    .end local v1    # "producer":Lcom/google/android/s3/producers/S3RequestProducer;
    :cond_4
    move-object v2, v3

    .line 56
    goto :goto_0
.end method
