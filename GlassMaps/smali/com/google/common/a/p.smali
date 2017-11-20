.class public final Lcom/google/common/a/p;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final a:[Lcom/google/common/a/p;


# instance fields
.field private b:I

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/a/p;

    sput-object v0, Lcom/google/common/a/p;->a:[Lcom/google/common/a/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 21
    iput v2, p0, Lcom/google/common/a/p;->c:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/a/p;->d:J

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/a/p;->e:Ljava/lang/String;

    .line 81
    iput-boolean v2, p0, Lcom/google/common/a/p;->f:Z

    .line 10
    return-void
.end method

.method private a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/p;
    .locals 2

    .prologue
    .line 168
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 169
    sparse-switch v0, :sswitch_data_0

    .line 173
    iget-object v1, p0, Lcom/google/common/a/p;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/common/a/p;->unknownFieldData:Ljava/util/List;

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/google/common/a/p;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    :sswitch_0
    return-object p0

    .line 184
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 185
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 188
    :cond_2
    iput v0, p0, Lcom/google/common/a/p;->c:I

    .line 189
    iget v0, p0, Lcom/google/common/a/p;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/a/p;->b:I

    goto :goto_0

    .line 191
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/a/p;->c:I

    goto :goto_0

    .line 196
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/a/p;->d:J

    .line 197
    iget v0, p0, Lcom/google/common/a/p;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/a/p;->b:I

    goto :goto_0

    .line 201
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/a/p;->e:Ljava/lang/String;

    .line 202
    iget v0, p0, Lcom/google/common/a/p;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/a/p;->b:I

    goto :goto_0

    .line 206
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/a/p;->f:Z

    .line 207
    iget v0, p0, Lcom/google/common/a/p;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/a/p;->b:I

    goto :goto_0

    .line 169
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    if-ne p1, p0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    instance-of v2, p1, Lcom/google/common/a/p;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 103
    :cond_2
    check-cast p1, Lcom/google/common/a/p;

    .line 104
    iget v2, p0, Lcom/google/common/a/p;->c:I

    iget v3, p1, Lcom/google/common/a/p;->c:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/common/a/p;->d:J

    iget-wide v4, p1, Lcom/google/common/a/p;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/common/a/p;->e:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/common/a/p;->e:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 106
    :goto_1
    iget-boolean v2, p0, Lcom/google/common/a/p;->f:Z

    iget-boolean v3, p1, Lcom/google/common/a/p;->f:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/common/a/p;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/common/a/p;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 108
    goto :goto_0

    .line 104
    :cond_4
    iget-object v2, p0, Lcom/google/common/a/p;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/common/a/p;->e:Ljava/lang/String;

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/common/a/p;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/common/a/p;->unknownFieldData:Ljava/util/List;

    .line 108
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    iget v1, p0, Lcom/google/common/a/p;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 143
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/a/p;->c:I

    .line 144
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    :cond_0
    iget v1, p0, Lcom/google/common/a/p;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 147
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/a/p;->d:J

    .line 148
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :cond_1
    iget v1, p0, Lcom/google/common/a/p;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 151
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/a/p;->e:Ljava/lang/String;

    .line 152
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    :cond_2
    iget v1, p0, Lcom/google/common/a/p;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 155
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/common/a/p;->f:Z

    .line 156
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    :cond_3
    iget-object v1, p0, Lcom/google/common/a/p;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 159
    iput v0, p0, Lcom/google/common/a/p;->cachedSize:I

    .line 160
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 112
    .line 113
    iget v0, p0, Lcom/google/common/a/p;->c:I

    add-int/lit16 v0, v0, 0x20f

    .line 114
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/a/p;->d:J

    iget-wide v4, p0, Lcom/google/common/a/p;->d:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 115
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/p;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/common/a/p;->f:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v0, v2

    .line 117
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/a/p;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 118
    return v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/common/a/p;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/google/common/a/p;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/google/common/a/p;->a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/p;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 123
    iget v0, p0, Lcom/google/common/a/p;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/a/p;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 126
    :cond_0
    iget v0, p0, Lcom/google/common/a/p;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 127
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/common/a/p;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 129
    :cond_1
    iget v0, p0, Lcom/google/common/a/p;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 130
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/a/p;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 132
    :cond_2
    iget v0, p0, Lcom/google/common/a/p;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 133
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/common/a/p;->f:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/google/common/a/p;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 137
    return-void
.end method
