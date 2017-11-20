.class public Lcom/google/android/s3/PairHttpConnectionFactory;
.super Ljava/lang/Object;
.source "PairHttpConnectionFactory.java"

# interfaces
.implements Lcom/google/android/s3/S3ConnectionFactory;


# instance fields
.field private final mConnectionFactory:Lcom/google/android/s3/ConnectionFactory;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mHttpServerInfoSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/Supplier;Lcom/google/android/s3/ConnectionFactory;)V
    .locals 0
    .param p1    # Lcom/google/common/base/Supplier;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "connectionFactory"    # Lcom/google/android/s3/ConnectionFactory;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;",
            ">;",
            "Lcom/google/android/s3/ConnectionFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "pairHttpServerInfo":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/s3/PairHttpConnectionFactory;->mHttpServerInfoSupplier:Lcom/google/common/base/Supplier;

    .line 19
    iput-object p2, p0, Lcom/google/android/s3/PairHttpConnectionFactory;->mConnectionFactory:Lcom/google/android/s3/ConnectionFactory;

    .line 20
    return-void
.end method


# virtual methods
.method public create()Lcom/google/android/s3/S3Connection;
    .locals 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 24
    new-instance v1, Lcom/google/android/s3/PairHttpConnection;

    iget-object v0, p0, Lcom/google/android/s3/PairHttpConnectionFactory;->mHttpServerInfoSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    iget-object v2, p0, Lcom/google/android/s3/PairHttpConnectionFactory;->mConnectionFactory:Lcom/google/android/s3/ConnectionFactory;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/s3/PairHttpConnection;-><init>(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;Lcom/google/android/s3/ConnectionFactory;Z)V

    return-object v1
.end method
