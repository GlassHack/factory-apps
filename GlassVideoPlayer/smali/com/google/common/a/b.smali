.class public final Lcom/google/common/a/b;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final a:[Lcom/google/common/a/b;


# instance fields
.field public b:J

.field public c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/a/b;

    sput-object v0, Lcom/google/common/a/b;->a:[Lcom/google/common/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 13
    iput-wide v0, p0, Lcom/google/common/a/b;->b:J

    .line 16
    iput-wide v0, p0, Lcom/google/common/a/b;->c:J

    .line 10
    return-void
.end method

.method private a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/b;
    .locals 2

    .prologue
    .line 61
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 62
    sparse-switch v0, :sswitch_data_0

    .line 66
    iget-object v1, p0, Lcom/google/common/a/b;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/common/a/b;->unknownFieldData:Ljava/util/List;

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/google/common/a/b;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    :sswitch_0
    return-object p0

    .line 77
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/a/b;->b:J

    goto :goto_0

    .line 81
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/a/b;->c:J

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


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 20
    if-ne p1, p0, :cond_1

    .line 25
    :cond_0
    :goto_0
    return v0

    .line 21
    :cond_1
    instance-of v2, p1, Lcom/google/common/a/b;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 22
    :cond_2
    check-cast p1, Lcom/google/common/a/b;

    .line 23
    iget-wide v2, p0, Lcom/google/common/a/b;->b:J

    iget-wide v4, p1, Lcom/google/common/a/b;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/common/a/b;->c:J

    iget-wide v4, p1, Lcom/google/common/a/b;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/common/a/b;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/common/a/b;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 25
    goto :goto_0

    .line 23
    :cond_4
    iget-object v2, p0, Lcom/google/common/a/b;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/common/a/b;->unknownFieldData:Ljava/util/List;

    .line 25
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/a/b;->b:J

    .line 48
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/a/b;->c:J

    .line 50
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    iget-object v1, p0, Lcom/google/common/a/b;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    iput v0, p0, Lcom/google/common/a/b;->cachedSize:I

    .line 53
    return v0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const/16 v5, 0x20

    .line 29
    .line 30
    iget-wide v0, p0, Lcom/google/common/a/b;->b:J

    iget-wide v2, p0, Lcom/google/common/a/b;->b:J

    ushr-long/2addr v2, v5

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x20f

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/common/a/b;->c:J

    iget-wide v3, p0, Lcom/google/common/a/b;->c:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 32
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/b;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 33
    return v0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/google/common/a/b;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/google/common/a/b;->a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/common/a/b;->b:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 39
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/common/a/b;->c:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 40
    iget-object v0, p0, Lcom/google/common/a/b;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 42
    return-void
.end method
