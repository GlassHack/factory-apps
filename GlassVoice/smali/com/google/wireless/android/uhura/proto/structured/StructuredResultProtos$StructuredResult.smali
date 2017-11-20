.class public final Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "StructuredResultProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StructuredResult"
.end annotation


# static fields
.field public static final WEB_RESULT_TYPE_APPBAR:I = 0x19

.field public static final WEB_RESULT_TYPE_ASK_GOOGLE:I = 0x1

.field public static final WEB_RESULT_TYPE_CALCULATOR:I = 0x2

.field public static final WEB_RESULT_TYPE_CURRENCY:I = 0x3

.field public static final WEB_RESULT_TYPE_DICTIONARY:I = 0x4

.field public static final WEB_RESULT_TYPE_FINANCE:I = 0x5

.field public static final WEB_RESULT_TYPE_FLIGHTS:I = 0x6

.field public static final WEB_RESULT_TYPE_IMAGES:I = 0x7

.field public static final WEB_RESULT_TYPE_KNOWLEDGE_ANSWER:I = 0x8

.field public static final WEB_RESULT_TYPE_KNOWLEDGE_CARD:I = 0x9

.field public static final WEB_RESULT_TYPE_LOCAL_UNIVERSAL:I = 0xa

.field public static final WEB_RESULT_TYPE_MINI_CARD:I = 0xb

.field public static final WEB_RESULT_TYPE_NEWS:I = 0x1a

.field public static final WEB_RESULT_TYPE_QUESTION_ANSWER:I = 0xc

.field public static final WEB_RESULT_TYPE_RELATIONSHIP:I = 0xd

.field public static final WEB_RESULT_TYPE_ROUTE:I = 0xe

.field public static final WEB_RESULT_TYPE_SEARCH_ACTION:I = 0xf

.field public static final WEB_RESULT_TYPE_SHOWTIME:I = 0x10

.field public static final WEB_RESULT_TYPE_SNIPPETS:I = 0x11

.field public static final WEB_RESULT_TYPE_SPORTS:I = 0x12

.field public static final WEB_RESULT_TYPE_STATISTICS:I = 0x13

.field public static final WEB_RESULT_TYPE_SUNRISE_SUNSET:I = 0x14

.field public static final WEB_RESULT_TYPE_TIME_DATE:I = 0x15

.field public static final WEB_RESULT_TYPE_TRANSLATION:I = 0x16

.field public static final WEB_RESULT_TYPE_UNDEFINED:I = 0x0

.field public static final WEB_RESULT_TYPE_WEATHER:I = 0x17

.field public static final WEB_RESULT_TYPE_WHEN_IS:I = 0x18

.field private static volatile _emptyArray:[Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;


# instance fields
.field public actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

.field private bitField0_:I

.field private confidence_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 79
    invoke-virtual {p0}, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->clear()Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;

    .line 80
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->_emptyArray:[Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;

    if-nez v0, :cond_1

    .line 44
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->_emptyArray:[Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;

    sput-object v0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->_emptyArray:[Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->_emptyArray:[Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;

    invoke-direct {v0}, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;

    invoke-direct {v0}, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->bitField0_:I

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->confidence_:F

    .line 85
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->cachedSize:I

    .line 87
    return-object p0
.end method

.method public clearConfidence()Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->confidence_:F

    .line 71
    iget v0, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->bitField0_:I

    .line 72
    return-object p0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->confidence_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 108
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 109
    .local v2, "size":I
    iget v3, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 110
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->confidence_:F

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 113
    :cond_0
    iget-object v3, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    aget-object v0, v3, v1

    .line 116
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    if-eqz v0, :cond_1

    .line 117
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 114
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    .end local v1    # "i":I
    :cond_2
    iput v2, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->cachedSize:I

    .line 123
    return v2
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->bitField0_:I

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
    invoke-virtual {p0, p1}, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 131
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 132
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 136
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 137
    :sswitch_0
    return-object p0

    .line 142
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->confidence_:F

    .line 143
    iget v5, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->bitField0_:I

    goto :goto_0

    .line 147
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 149
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    if-nez v5, :cond_2

    move v1, v4

    .line 150
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    .line 152
    .local v2, "newArray":[Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    if-eqz v1, :cond_1

    .line 153
    iget-object v5, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 156
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;-><init>()V

    aput-object v5, v2, v1

    .line 157
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 158
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 149
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    :cond_2
    iget-object v5, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    array-length v1, v5

    goto :goto_1

    .line 161
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;-><init>()V

    aput-object v5, v2, v1

    .line 162
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 163
    iput-object v2, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    goto :goto_0

    .line 132
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setConfidence(F)Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 62
    iput p1, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->confidence_:F

    .line 63
    iget v0, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->bitField0_:I

    .line 64
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget v2, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 94
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->confidence_:F

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 97
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 98
    iget-object v2, p0, Lcom/google/wireless/android/uhura/proto/structured/StructuredResultProtos$StructuredResult;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    aget-object v0, v2, v1

    .line 99
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    if-eqz v0, :cond_1

    .line 100
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 97
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
