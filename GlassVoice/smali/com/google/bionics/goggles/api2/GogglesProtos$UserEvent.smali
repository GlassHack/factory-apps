.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserEvent"
.end annotation


# static fields
.field public static final ENTRY_POINT_ENTRY_CORPUS_SELECTOR_TOOLBAR:I = 0xa

.field public static final ENTRY_POINT_ENTRY_DISAMBIG_DISMISSAL:I = 0x4

.field public static final ENTRY_POINT_ENTRY_ERROR_RETRY:I = 0x7

.field public static final ENTRY_POINT_ENTRY_HOMESCREEN:I = 0x8

.field public static final ENTRY_POINT_ENTRY_KEYBOARD:I = 0x9

.field public static final ENTRY_POINT_ENTRY_MENU_ITEM:I = 0x2

.field public static final ENTRY_POINT_ENTRY_OTHER:I = 0x1

.field public static final ENTRY_POINT_ENTRY_PREDICTIVE_CARD:I = 0x5

.field public static final ENTRY_POINT_ENTRY_RESULT_PAGE:I = 0x3

.field public static final ENTRY_POINT_ENTRY_VOICE_ACTION:I = 0x6

.field public static final EVENT_TYPE_EVENT_CLOSED_SEARCH:I = 0x7

.field public static final EVENT_TYPE_EVENT_DISAMBIG_CLICK:I = 0x3

.field public static final EVENT_TYPE_EVENT_FURTHER_RESULT_DETAILS:I = 0x6

.field public static final EVENT_TYPE_EVENT_GO_BACK:I = 0x4

.field public static final EVENT_TYPE_EVENT_REQUEST_RESULTS:I = 0x2

.field public static final EVENT_TYPE_EVENT_START_SEARCH:I = 0x1

.field public static final EVENT_TYPE_EVENT_TEXT_REFINEMENT:I = 0x5

.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;


# instance fields
.field private bitField0_:I

.field private entryPoint_:I

.field private resultId_:Ljava/lang/String;

.field private resultSetNumber_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2264
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2265
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->clear()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    .line 2266
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 2

    .prologue
    .line 2172
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    if-nez v0, :cond_1

    .line 2173
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2175
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    if-nez v0, :cond_0

    .line 2176
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    .line 2178
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2180
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    return-object v0

    .line 2178
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2365
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2359
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2269
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    .line 2270
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->type_:I

    .line 2271
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->entryPoint_:I

    .line 2272
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultSetNumber_:I

    .line 2273
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultId_:Ljava/lang/String;

    .line 2274
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->cachedSize:I

    .line 2275
    return-object p0
.end method

.method public clearEntryPoint()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1

    .prologue
    .line 2218
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->entryPoint_:I

    .line 2219
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    .line 2220
    return-object p0
.end method

.method public clearResultId()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1

    .prologue
    .line 2259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultId_:Ljava/lang/String;

    .line 2260
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    .line 2261
    return-object p0
.end method

.method public clearResultSetNumber()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1

    .prologue
    .line 2237
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultSetNumber_:I

    .line 2238
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    .line 2239
    return-object p0
.end method

.method public clearType()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1

    .prologue
    .line 2199
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->type_:I

    .line 2200
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    .line 2201
    return-object p0
.end method

.method public getEntryPoint()I
    .locals 1

    .prologue
    .line 2207
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->entryPoint_:I

    return v0
.end method

.method public getResultId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultId_:Ljava/lang/String;

    return-object v0
.end method

.method public getResultSetNumber()I
    .locals 1

    .prologue
    .line 2226
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultSetNumber_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2297
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2298
    .local v0, "size":I
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2299
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->type_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2302
    :cond_0
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2303
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->entryPoint_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2306
    :cond_1
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2307
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultSetNumber_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2310
    :cond_2
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 2311
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2314
    :cond_3
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->cachedSize:I

    .line 2315
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 2188
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->type_:I

    return v0
.end method

.method public hasEntryPoint()Z
    .locals 1

    .prologue
    .line 2215
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResultId()Z
    .locals 1

    .prologue
    .line 2256
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResultSetNumber()Z
    .locals 1

    .prologue
    .line 2234
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 2196
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2323
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2324
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2328
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2329
    :sswitch_0
    return-object p0

    .line 2334
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->type_:I

    .line 2335
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    goto :goto_0

    .line 2339
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->entryPoint_:I

    .line 2340
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    goto :goto_0

    .line 2344
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultSetNumber_:I

    .line 2345
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    goto :goto_0

    .line 2349
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultId_:Ljava/lang/String;

    .line 2350
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    goto :goto_0

    .line 2324
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
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
    .line 2145
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    move-result-object v0

    return-object v0
.end method

.method public setEntryPoint(I)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2210
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->entryPoint_:I

    .line 2211
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    .line 2212
    return-object p0
.end method

.method public setResultId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2248
    if-nez p1, :cond_0

    .line 2249
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2251
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultId_:Ljava/lang/String;

    .line 2252
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    .line 2253
    return-object p0
.end method

.method public setResultSetNumber(I)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2229
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultSetNumber_:I

    .line 2230
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    .line 2231
    return-object p0
.end method

.method public setType(I)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2191
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->type_:I

    .line 2192
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    .line 2193
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
    .line 2281
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2282
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2284
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2285
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->entryPoint_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2287
    :cond_1
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2288
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultSetNumber_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2290
    :cond_2
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 2291
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2293
    :cond_3
    return-void
.end method
