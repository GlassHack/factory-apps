.class public final Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GenericEntity"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/String;

.field private imageUrl_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1062
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1063
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->clear()Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    .line 1064
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
    .locals 2

    .prologue
    .line 961
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    if-nez v0, :cond_1

    .line 962
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 964
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    if-nez v0, :cond_0

    .line 965
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    .line 967
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    return-object v0

    .line 967
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1163
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1157
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
    .locals 1

    .prologue
    .line 1067
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    .line 1068
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->title_:Ljava/lang/String;

    .line 1069
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->description_:Ljava/lang/String;

    .line 1070
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->value_:Ljava/lang/String;

    .line 1071
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->imageUrl_:Ljava/lang/String;

    .line 1072
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->cachedSize:I

    .line 1073
    return-object p0
.end method

.method public clearDescription()Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
    .locals 1

    .prologue
    .line 1013
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->description_:Ljava/lang/String;

    .line 1014
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    .line 1015
    return-object p0
.end method

.method public clearImageUrl()Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
    .locals 1

    .prologue
    .line 1057
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->imageUrl_:Ljava/lang/String;

    .line 1058
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    .line 1059
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
    .locals 1

    .prologue
    .line 991
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->title_:Ljava/lang/String;

    .line 992
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    .line 993
    return-object p0
.end method

.method public clearValue()Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
    .locals 1

    .prologue
    .line 1035
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->value_:Ljava/lang/String;

    .line 1036
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    .line 1037
    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1095
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1096
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1097
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->title_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1100
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1101
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->description_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1104
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1105
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->value_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1108
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1109
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->imageUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1112
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->cachedSize:I

    .line 1113
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 1010
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 1054
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 988
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 1032
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 955
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1121
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1122
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1126
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1127
    :sswitch_0
    return-object p0

    .line 1132
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->title_:Ljava/lang/String;

    .line 1133
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    goto :goto_0

    .line 1137
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->description_:Ljava/lang/String;

    .line 1138
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    goto :goto_0

    .line 1142
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->value_:Ljava/lang/String;

    .line 1143
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    goto :goto_0

    .line 1147
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->imageUrl_:Ljava/lang/String;

    .line 1148
    iget v1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    goto :goto_0

    .line 1122
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1002
    if-nez p1, :cond_0

    .line 1003
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1005
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->description_:Ljava/lang/String;

    .line 1006
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    .line 1007
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1046
    if-nez p1, :cond_0

    .line 1047
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1049
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->imageUrl_:Ljava/lang/String;

    .line 1050
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    .line 1051
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 980
    if-nez p1, :cond_0

    .line 981
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 983
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->title_:Ljava/lang/String;

    .line 984
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    .line 985
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1024
    if-nez p1, :cond_0

    .line 1025
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1027
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->value_:Ljava/lang/String;

    .line 1028
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    .line 1029
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
    .line 1079
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1080
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->title_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1082
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1083
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->description_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1085
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1086
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->value_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1088
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1089
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->imageUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1091
    :cond_3
    return-void
.end method
