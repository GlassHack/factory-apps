.class Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl$1;
.super Lcom/google/android/speech/network/request/BaseRequestBuilderTask;
.source "NetworkRequestProducerParamsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->getVoiceSearchParamsCallable(Ljava/lang/String;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/speech/network/request/BaseRequestBuilderTask",
        "<",
        "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl$1;->this$0:Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;

    invoke-direct {p0, p2}, Lcom/google/android/speech/network/request/BaseRequestBuilderTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected build()Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl$1;->this$0:Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;->buildParams()Lcom/google/speech/s3/PinholeStream$PinholeParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl$1;->build()Lcom/google/speech/s3/PinholeStream$PinholeParams;

    move-result-object v0

    return-object v0
.end method
