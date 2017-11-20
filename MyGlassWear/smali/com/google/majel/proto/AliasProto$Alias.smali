.class public final Lcom/google/majel/proto/AliasProto$Alias;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "AliasProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/AliasProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Alias"
.end annotation


# static fields
.field public static final ALIAS_TYPE_HOME:I = 0x0

.field public static final ALIAS_TYPE_WORK:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/majel/proto/AliasProto$Alias;


# instance fields
.field private aliasLocationAvailable_:Z

.field private aliasType_:I

.field private bitField0_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 70
    invoke-virtual {p0}, Lcom/google/majel/proto/AliasProto$Alias;->clear()Lcom/google/majel/proto/AliasProto$Alias;

    .line 71
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/AliasProto$Alias;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/google/majel/proto/AliasProto$Alias;->_emptyArray:[Lcom/google/majel/proto/AliasProto$Alias;

    if-nez v0, :cond_1

    .line 19
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/AliasProto$Alias;->_emptyArray:[Lcom/google/majel/proto/AliasProto$Alias;

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/AliasProto$Alias;

    sput-object v0, Lcom/google/majel/proto/AliasProto$Alias;->_emptyArray:[Lcom/google/majel/proto/AliasProto$Alias;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lcom/google/majel/proto/AliasProto$Alias;->_emptyArray:[Lcom/google/majel/proto/AliasProto$Alias;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/AliasProto$Alias;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lcom/google/majel/proto/AliasProto$Alias;

    invoke-direct {v0}, Lcom/google/majel/proto/AliasProto$Alias;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/AliasProto$Alias;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/AliasProto$Alias;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/AliasProto$Alias;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lcom/google/majel/proto/AliasProto$Alias;

    invoke-direct {v0}, Lcom/google/majel/proto/AliasProto$Alias;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/AliasProto$Alias;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/AliasProto$Alias;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->bitField0_:I

    .line 75
    iput v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasType_:I

    .line 76
    iput-boolean v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasLocationAvailable_:Z

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->cachedSize:I

    .line 78
    return-object p0
.end method

.method public clearAliasLocationAvailable()Lcom/google/majel/proto/AliasProto$Alias;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasLocationAvailable_:Z

    .line 65
    iget v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->bitField0_:I

    .line 66
    return-object p0
.end method

.method public clearAliasType()Lcom/google/majel/proto/AliasProto$Alias;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasType_:I

    .line 46
    iget v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->bitField0_:I

    .line 47
    return-object p0
.end method

.method public getAliasLocationAvailable()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasLocationAvailable_:Z

    return v0
.end method

.method public getAliasType()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 95
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/AliasProto$Alias;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 96
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/AliasProto$Alias;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 100
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasLocationAvailable_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->cachedSize:I

    .line 104
    return v0
.end method

.method public hasAliasLocationAvailable()Z
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAliasType()Z
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/AliasProto$Alias;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/AliasProto$Alias;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/AliasProto$Alias;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 113
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 117
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    :sswitch_0
    return-object p0

    .line 123
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasType_:I

    .line 124
    iget v1, p0, Lcom/google/majel/proto/AliasProto$Alias;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/AliasProto$Alias;->bitField0_:I

    goto :goto_0

    .line 128
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasLocationAvailable_:Z

    .line 129
    iget v1, p0, Lcom/google/majel/proto/AliasProto$Alias;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/AliasProto$Alias;->bitField0_:I

    goto :goto_0

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setAliasLocationAvailable(Z)Lcom/google/majel/proto/AliasProto$Alias;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasLocationAvailable_:Z

    .line 57
    iget v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->bitField0_:I

    .line 58
    return-object p0
.end method

.method public setAliasType(I)Lcom/google/majel/proto/AliasProto$Alias;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasType_:I

    .line 38
    iget v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->bitField0_:I

    .line 39
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 87
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 88
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasLocationAvailable_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 90
    :cond_1
    return-void
.end method
