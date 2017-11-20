.class public final Lcom/google/b/a/fr;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/b/a/fr;


# instance fields
.field private b:I

.field private c:F

.field private d:F

.field private e:Ljava/lang/String;

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 107
    invoke-direct {p0}, Lcom/google/b/a/fr;->b()Lcom/google/b/a/fr;

    .line 108
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/fr;
    .locals 1

    .prologue
    .line 165
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 166
    sparse-switch v0, :sswitch_data_0

    .line 170
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    :sswitch_0
    return-object p0

    .line 176
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/b/a/fr;->c:F

    .line 177
    iget v0, p0, Lcom/google/b/a/fr;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/fr;->b:I

    goto :goto_0

    .line 181
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/b/a/fr;->d:F

    .line 182
    iget v0, p0, Lcom/google/b/a/fr;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/fr;->b:I

    goto :goto_0

    .line 186
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/fr;->e:Ljava/lang/String;

    .line 187
    iget v0, p0, Lcom/google/b/a/fr;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/fr;->b:I

    goto :goto_0

    .line 191
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/b/a/fr;->f:F

    .line 192
    iget v0, p0, Lcom/google/b/a/fr;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/b/a/fr;->b:I

    goto :goto_0

    .line 166
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/fr;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/b/a/fr;->a:[Lcom/google/b/a/fr;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/b/a/fr;->a:[Lcom/google/b/a/fr;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/fr;

    sput-object v0, Lcom/google/b/a/fr;->a:[Lcom/google/b/a/fr;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/b/a/fr;->a:[Lcom/google/b/a/fr;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/fr;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/fr;->b:I

    .line 112
    iput v1, p0, Lcom/google/b/a/fr;->c:F

    .line 113
    iput v1, p0, Lcom/google/b/a/fr;->d:F

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/fr;->e:Ljava/lang/String;

    .line 115
    iput v1, p0, Lcom/google/b/a/fr;->f:F

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/fr;->cachedSize:I

    .line 117
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 139
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 140
    iget v1, p0, Lcom/google/b/a/fr;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 141
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/b/a/fr;->c:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    :cond_0
    iget v1, p0, Lcom/google/b/a/fr;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 145
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/fr;->d:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    :cond_1
    iget v1, p0, Lcom/google/b/a/fr;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 149
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/fr;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_2
    iget v1, p0, Lcom/google/b/a/fr;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 153
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/b/a/fr;->f:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    :cond_3
    iput v0, p0, Lcom/google/b/a/fr;->cachedSize:I

    .line 157
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/google/b/a/fr;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/fr;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lcom/google/b/a/fr;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/fr;->c:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 126
    :cond_0
    iget v0, p0, Lcom/google/b/a/fr;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 127
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/fr;->d:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 129
    :cond_1
    iget v0, p0, Lcom/google/b/a/fr;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 130
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/fr;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 132
    :cond_2
    iget v0, p0, Lcom/google/b/a/fr;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 133
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/b/a/fr;->f:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 135
    :cond_3
    return-void
.end method
