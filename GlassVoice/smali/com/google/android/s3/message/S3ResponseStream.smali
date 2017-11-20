.class public Lcom/google/android/s3/message/S3ResponseStream;
.super Ljava/lang/Object;
.source "S3ResponseStream.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/s3/message/S3ResponseStream$FakeBrokenNetwork;
    }
.end annotation


# static fields
.field private static final DEBUG_FAKE_BROKEN:Z = false

.field private static final MAX_PACKET_LEN:I = 0x400000

.field private static final TAG:Ljava/lang/String; = "S3ResponseStream"


# instance fields
.field private final mDis:Ljava/io/DataInputStream;

.field private final mFakeBrokenNetwork:Lcom/google/android/s3/message/S3ResponseStream$FakeBrokenNetwork;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/android/s3/message/S3ResponseStream;->mDis:Ljava/io/DataInputStream;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/s3/message/S3ResponseStream;->mFakeBrokenNetwork:Lcom/google/android/s3/message/S3ResponseStream$FakeBrokenNetwork;

    .line 37
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/s3/message/S3ResponseStream;->mDis:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 75
    return-void
.end method

.method public read()Lcom/google/speech/s3/S3$S3Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 45
    :goto_0
    iget-object v3, p0, Lcom/google/android/s3/message/S3ResponseStream;->mDis:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .local v1, "len":I
    if-nez v1, :cond_0

    .line 48
    const-string v3, "S3ResponseStream"

    const-string v4, "Empty packet!"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :cond_0
    if-lez v1, :cond_1

    const/high16 v3, 0x400000

    if-le v1, v3, :cond_2

    .line 53
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong len "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    :cond_2
    const-string v3, "S3ResponseStream"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Packet len "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 60
    new-array v0, v1, [B

    .line 61
    .local v0, "bytes":[B
    iget-object v3, p0, Lcom/google/android/s3/message/S3ResponseStream;->mDis:Ljava/io/DataInputStream;

    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 62
    new-instance v2, Lcom/google/speech/s3/S3$S3Response;

    invoke-direct {v2}, Lcom/google/speech/s3/S3$S3Response;-><init>()V

    .line 63
    .local v2, "s3Response":Lcom/google/speech/s3/S3$S3Response;
    invoke-static {v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    .line 65
    const-string v3, "S3ResponseStream"

    invoke-static {v3}, Lcom/google/android/shared/util/L;->isVerboseEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    const-string v3, "S3ResponseStream"

    const-string v4, "S3Response: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->v(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 69
    :cond_3
    return-object v2
.end method
