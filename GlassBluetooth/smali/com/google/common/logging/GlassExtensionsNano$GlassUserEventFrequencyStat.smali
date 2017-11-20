.class public final Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "GlassExtensionsNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/GlassExtensionsNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassUserEventFrequencyStat"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;


# instance fields
.field public durationMs:J

.field public frequencyHz:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    sput-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 13
    iput-wide v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:J

    .line 16
    iput-wide v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:J

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 20
    if-ne p1, p0, :cond_1

    .line 25
    :cond_0
    :goto_0
    return v1

    .line 21
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 22
    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .line 23
    .local v0, "other":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    iget-wide v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:J

    iget-wide v5, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:J

    iget-wide v5, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 25
    goto :goto_0

    .line 23
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->unknownFieldData:Ljava/util/List;

    .line 25
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "size":I
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:J

    .line 48
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:J

    .line 50
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->cachedSize:I

    .line 53
    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 29
    const/16 v0, 0x11

    .line 30
    .local v0, "result":I
    iget-wide v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:J

    iget-wide v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:J

    ushr-long/2addr v3, v6

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit16 v0, v1, 0x20f

    .line 31
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:J

    iget-wide v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 32
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 33
    return v0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 62
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 66
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->unknownFieldData:Ljava/util/List;

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    :sswitch_0
    return-object p0

    .line 77
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:J

    goto :goto_0

    .line 81
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:J

    goto :goto_0

    .line 62
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 39
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 40
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 42
    return-void
.end method
