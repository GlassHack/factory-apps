.class Lcom/google/android/s3/lib/AudioS3RequestProducerFactory$1;
.super Ljava/lang/Object;
.source "AudioS3RequestProducerFactory.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->createInputStreamFactory()Lcom/google/common/base/Supplier;
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
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;


# direct methods
.method constructor <init>(Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory$1;->this$0:Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/google/android/s3/lib/S3MicrophoneInputStreamFactory;->createInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory$1;->get()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
