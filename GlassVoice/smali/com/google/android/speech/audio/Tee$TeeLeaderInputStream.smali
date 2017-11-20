.class Lcom/google/android/speech/audio/Tee$TeeLeaderInputStream;
.super Ljava/io/InputStream;
.source "Tee.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/audio/Tee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TeeLeaderInputStream"
.end annotation


# instance fields
.field private final mSharedStream:Lcom/google/android/speech/audio/Tee;


# direct methods
.method constructor <init>(Lcom/google/android/speech/audio/Tee;)V
    .locals 0
    .param p1, "sharedStream"    # Lcom/google/android/speech/audio/Tee;

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 427
    iput-object p1, p0, Lcom/google/android/speech/audio/Tee$TeeLeaderInputStream;->mSharedStream:Lcom/google/android/speech/audio/Tee;

    .line 428
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 446
    const-string v0, "Tee"

    const-string v1, "closing leader stream"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 447
    iget-object v0, p0, Lcom/google/android/speech/audio/Tee$TeeLeaderInputStream;->mSharedStream:Lcom/google/android/speech/audio/Tee;

    invoke-virtual {v0, v3}, Lcom/google/android/speech/audio/Tee;->remove(I)V

    .line 448
    iget-object v0, p0, Lcom/google/android/speech/audio/Tee$TeeLeaderInputStream;->mSharedStream:Lcom/google/android/speech/audio/Tee;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/Tee;->close()V

    .line 449
    return-void
.end method

.method public read()I
    .locals 2

    .prologue
    .line 432
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Find some other app to be inefficient in."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    iget-object v1, p0, Lcom/google/android/speech/audio/Tee$TeeLeaderInputStream;->mSharedStream:Lcom/google/android/speech/audio/Tee;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/speech/audio/Tee;->readLeader([BII)I

    move-result v0

    .line 438
    .local v0, "bytesCopied":I
    if-nez v0, :cond_0

    .line 439
    const/4 v0, -0x1

    .line 441
    :cond_0
    return v0
.end method
