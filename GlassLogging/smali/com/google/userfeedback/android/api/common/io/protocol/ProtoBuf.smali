.class public Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
.super Ljava/lang/Object;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$1;,
        Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;
    }
.end annotation


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final FALSE:Ljava/lang/Boolean;

.field private static final MARKER_HOLDER:I = -0x1

.field private static final MSG_EOF:Ljava/lang/String; = "Unexp.EOF"

.field private static final MSG_MISMATCH:Ljava/lang/String; = "Type mismatch"

.field private static final MSG_UNSUPPORTED:Ljava/lang/String; = "Unsupp.Type"

.field private static final NULL_COUNTER:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;

.field public static final TRUE:Ljava/lang/Boolean;

.field private static final VARINT_MAX_BYTES:I = 0xa

.field static final WIRETYPE_END_GROUP:I = 0x4

.field static final WIRETYPE_FIXED32:I = 0x5

.field static final WIRETYPE_FIXED64:I = 0x1

.field static final WIRETYPE_LENGTH_DELIMITED:I = 0x2

.field static final WIRETYPE_START_GROUP:I = 0x3

.field static final WIRETYPE_VARINT:I


# instance fields
.field private cachedSize:I

.field private msgType:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

.field private final values:Lcom/google/userfeedback/android/api/common/util/IntMap;

.field private wireTypes:Lcom/google/userfeedback/android/api/common/util/IntMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    .line 54
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    .line 55
    new-array v0, v2, [B

    sput-object v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->EMPTY_BYTE_ARRAY:[B

    .line 382
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;-><init>(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$1;)V

    sput-object v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->NULL_COUNTER:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;

    return-void
.end method

.method public constructor <init>(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;)V
    .locals 1
    .param p1, "type"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->cachedSize:I

    .line 97
    iput-object p1, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->msgType:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 98
    new-instance v0, Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->values:Lcom/google/userfeedback/android/api/common/util/IntMap;

    .line 99
    return-void
.end method

.method private addObject(ILjava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 1361
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;Z)V

    .line 1362
    return-void
.end method

.method private assertTypeMatch(ILjava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1124
    return-void
.end method

.method private static checkTag(I)V
    .locals 0
    .param p0, "tag"    # I

    .prologue
    .line 1214
    return-void
.end method

.method private convert(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "tagType"    # I
    .param p3, "tag"    # I

    .prologue
    .line 1369
    packed-switch p2, :pswitch_data_0

    .line 1437
    :pswitch_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unsupp.Type"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1374
    :pswitch_1
    instance-of v4, p1, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 1434
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    :pswitch_2
    return-object p1

    .line 1377
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-int v4, v4

    packed-switch v4, :pswitch_data_1

    .line 1383
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Type mismatch"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1379
    :pswitch_3
    sget-object p1, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1381
    :pswitch_4
    sget-object p1, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1393
    .restart local p1    # "obj":Ljava/lang/Object;
    :pswitch_5
    instance-of v4, p1, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 1394
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x1

    :goto_1
    invoke-static {v4, v5}, Lcom/google/userfeedback/android/api/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 1399
    .restart local p1    # "obj":Ljava/lang/Object;
    :pswitch_6
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1400
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/userfeedback/android/api/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    .line 1401
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v4, p1, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    if-eqz v4, :cond_0

    .line 1402
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1404
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    check-cast p1, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 1405
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 1406
    :catch_0
    move-exception v2

    .line 1407
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1413
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local p1    # "obj":Ljava/lang/Object;
    :pswitch_7
    instance-of v4, p1, [B

    if-eqz v4, :cond_0

    .line 1414
    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [B

    .line 1415
    .local v1, "data":[B
    const/4 v4, 0x0

    array-length v5, v1

    const/4 v6, 0x1

    invoke-static {v1, v4, v5, v6}, Lcom/google/userfeedback/android/api/common/io/IoUtil;->decodeUtf8([BIIZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1420
    .end local v1    # "data":[B
    .restart local p1    # "obj":Ljava/lang/Object;
    :pswitch_8
    instance-of v4, p1, [B

    if-eqz v4, :cond_0

    .line 1423
    if-lez p3, :cond_4

    :try_start_1
    iget-object v4, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->msgType:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    if-eqz v4, :cond_4

    .line 1424
    new-instance v3, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    iget-object v4, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->msgType:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v4, p3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v4}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;-><init>(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;)V

    .line 1429
    .local v3, "msg":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    :goto_2
    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {v3, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    move-result-object p1

    goto/16 :goto_0

    .line 1426
    .end local v3    # "msg":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_4
    new-instance v3, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;-><init>(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v3    # "msg":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    goto :goto_2

    .line 1430
    .end local v3    # "msg":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .end local p1    # "obj":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 1431
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1369
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1377
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCachedDataSize(IIZ)I
    .locals 7
    .param p1, "tag"    # I
    .param p2, "i"    # I
    .param p3, "trustSizeCache"    # Z

    .prologue
    .line 665
    shl-int/lit8 v5, p1, 0x3

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v2

    .line 667
    .local v2, "tagSize":I
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 684
    :pswitch_0
    const/16 v5, 0x10

    invoke-direct {p0, p1, p2, v5}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    .line 688
    .local v1, "o":Ljava/lang/Object;
    instance-of v5, v1, [B

    if-eqz v5, :cond_1

    .line 689
    check-cast v1, [B

    .end local v1    # "o":Ljava/lang/Object;
    check-cast v1, [B

    array-length v0, v1

    .line 696
    .local v0, "contentSize":I
    :goto_0
    int-to-long v5, v0

    invoke-static {v5, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v5, v0

    .end local v0    # "contentSize":I
    :goto_1
    return v5

    .line 669
    :pswitch_1
    add-int/lit8 v5, v2, 0x4

    goto :goto_1

    .line 671
    :pswitch_2
    add-int/lit8 v5, v2, 0x8

    goto :goto_1

    .line 673
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getLong(II)J

    move-result-wide v3

    .line 674
    .local v3, "value":J
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 675
    invoke-static {v3, v4}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v3

    .line 677
    :cond_0
    invoke-static {v3, v4}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v5

    add-int/2addr v5, v2

    goto :goto_1

    .line 680
    .end local v3    # "value":J
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-direct {v5, p3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getCachedDataSize(Z)I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v5, v2

    goto :goto_1

    .line 690
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 691
    check-cast v1, Ljava/lang/String;

    .end local v1    # "o":Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Lcom/google/userfeedback/android/api/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    move-result v0

    .restart local v0    # "contentSize":I
    goto :goto_0

    .line 693
    .end local v0    # "contentSize":I
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_2
    check-cast v1, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-direct {v1, p3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getCachedDataSize(Z)I

    move-result v0

    .restart local v0    # "contentSize":I
    goto :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCachedDataSize(Z)I
    .locals 7
    .param p1, "trustCache"    # Z

    .prologue
    .line 593
    iget v5, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->cachedSize:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_0

    if-eqz p1, :cond_0

    .line 594
    iget v5, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->cachedSize:I

    .line 607
    :goto_0
    return v5

    .line 596
    :cond_0
    const/4 v3, 0x0

    .line 597
    .local v3, "size":I
    iget-object v5, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->values:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v5}, Lcom/google/userfeedback/android/api/common/util/IntMap;->keys()Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;

    move-result-object v2

    .line 598
    .local v2, "itr":Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;
    :cond_1
    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 599
    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->next()I

    move-result v4

    .line 600
    .local v4, "tag":I
    invoke-virtual {p0, v4}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 601
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 602
    invoke-direct {p0, v4, v1, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getCachedDataSize(IIZ)I

    move-result v5

    add-int/2addr v3, v5

    .line 601
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 605
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v4    # "tag":I
    :cond_2
    iput v3, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->cachedSize:I

    .line 607
    iget v5, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->cachedSize:I

    goto :goto_0
.end method

.method private static getCount(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 527
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/util/Vector;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Vector;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getDefault(I)Ljava/lang/Object;
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 1200
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1206
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->msgType:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1204
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1200
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method private static getNumBytesUsed(Ljava/lang/Object;)I
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 627
    if-nez p0, :cond_1

    .line 654
    :cond_0
    :goto_0
    return v2

    .line 630
    :cond_1
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 631
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    .line 633
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v3, p0, Ljava/util/Vector;

    if-eqz v3, :cond_3

    .line 634
    const/4 v2, 0x0

    .line 635
    .local v2, "numBytesUsed":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    move-object v3, p0

    check-cast v3, Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    move-object v3, p0

    .line 636
    check-cast v3, Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 637
    .local v0, "element":Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getNumBytesUsed(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 635
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 641
    .end local v0    # "element":Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "numBytesUsed":I
    :cond_3
    instance-of v3, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    if-eqz v3, :cond_4

    .line 642
    check-cast p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getNumBytesUsed()I

    move-result v2

    goto :goto_0

    .line 644
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v3, p0, [B

    if-eqz v3, :cond_5

    .line 645
    check-cast p0, [B

    .end local p0    # "value":Ljava/lang/Object;
    check-cast p0, [B

    array-length v2, p0

    goto :goto_0

    .line 647
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v3, p0, Ljava/lang/Long;

    if-eqz v3, :cond_6

    .line 648
    const/16 v2, 0x8

    goto :goto_0

    .line 650
    :cond_6
    instance-of v3, p0, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 651
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getObject(II)Ljava/lang/Object;
    .locals 3
    .param p1, "tag"    # I
    .param p2, "desiredType"    # I

    .prologue
    .line 1223
    invoke-static {p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->checkTag(I)V

    .line 1224
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->values:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v2, p1}, Lcom/google/userfeedback/android/api/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1225
    .local v1, "o":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v0

    .line 1227
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 1228
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    move-result-object v2

    .line 1234
    :goto_0
    return-object v2

    .line 1231
    :cond_0
    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 1232
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1234
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, p2, v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method private getObject(III)Ljava/lang/Object;
    .locals 3
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "desiredType"    # I

    .prologue
    .line 1243
    invoke-static {p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->checkTag(I)V

    .line 1244
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->values:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v2, p1}, Lcom/google/userfeedback/android/api/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1245
    .local v1, "o":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v0

    .line 1247
    .local v0, "count":I
    if-lt p2, v0, :cond_0

    .line 1248
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1250
    :cond_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "desiredType"    # I
    .param p4, "o"    # Ljava/lang/Object;

    .prologue
    .line 1258
    const/4 v1, 0x0

    .line 1259
    .local v1, "v":Ljava/util/Vector;
    instance-of v2, p4, Ljava/util/Vector;

    if-eqz v2, :cond_0

    move-object v1, p4

    .line 1260
    check-cast v1, Ljava/util/Vector;

    .line 1261
    invoke-virtual {v1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p4

    .line 1264
    :cond_0
    invoke-direct {p0, p4, p3, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->convert(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    .line 1265
    .local v0, "o2":Ljava/lang/Object;
    if-eq v0, p4, :cond_1

    if-eqz p4, :cond_1

    .line 1266
    if-nez v1, :cond_2

    .line 1267
    invoke-direct {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 1272
    :cond_1
    :goto_0
    return-object v0

    .line 1269
    :cond_2
    invoke-virtual {v1, v0, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private static getVarIntSize(J)I
    .locals 3
    .param p0, "i"    # J

    .prologue
    .line 704
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_1

    .line 705
    const/16 v0, 0xa

    .line 712
    :cond_0
    return v0

    .line 707
    :cond_1
    const/4 v0, 0x1

    .line 708
    .local v0, "size":I
    :goto_0
    const-wide/16 v1, 0x80

    cmp-long v1, p0, v1

    if-ltz v1, :cond_0

    .line 709
    add-int/lit8 v0, v0, 0x1

    .line 710
    const/4 v1, 0x7

    shr-long/2addr p0, v1

    goto :goto_0
.end method

.method private final getWireType(I)I
    .locals 7
    .param p1, "tag"    # I

    .prologue
    .line 1282
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    .line 1284
    .local v0, "tagType":I
    packed-switch v0, :pswitch_data_0

    .line 1319
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unsupp.Type:"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->msgType:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1301
    :pswitch_1
    const/4 v0, 0x0

    .line 1317
    .end local v0    # "tagType":I
    :goto_0
    :pswitch_2
    return v0

    .line 1307
    .restart local v0    # "tagType":I
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 1311
    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    .line 1315
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 1317
    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    .line 1284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private insertObject(IILjava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    .line 1328
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;Z)V

    .line 1329
    return-void
.end method

.method private insertObject(IILjava/lang/Object;Z)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "o"    # Ljava/lang/Object;
    .param p4, "appendToEnd"    # Z

    .prologue
    .line 1337
    invoke-static {p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->checkTag(I)V

    .line 1338
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->values:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v2, p1}, Lcom/google/userfeedback/android/api/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1339
    .local v0, "current":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1340
    .local v1, "v":Ljava/util/Vector;
    instance-of v2, v0, Ljava/util/Vector;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1341
    check-cast v1, Ljava/util/Vector;

    .line 1343
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 1344
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 1358
    :goto_0
    return-void

    .line 1346
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    .line 1347
    if-nez v1, :cond_3

    .line 1348
    new-instance v1, Ljava/util/Vector;

    .end local v1    # "v":Ljava/util/Vector;
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1349
    .restart local v1    # "v":Ljava/util/Vector;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1350
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->values:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v2, p1, v1}, Lcom/google/userfeedback/android/api/common/util/IntMap;->put(ILjava/lang/Object;)V

    .line 1352
    :cond_3
    if-eqz p4, :cond_4

    .line 1353
    invoke-virtual {v1, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 1355
    :cond_4
    invoke-virtual {v1, p3, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private isZigZagEncodedType(I)Z
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 887
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    .line 888
    .local v0, "declaredType":I
    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private outputField(ILcom/google/userfeedback/android/api/common/io/MarkedOutputStream;)I
    .locals 20
    .param p1, "tag"    # I
    .param p2, "os"    # Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 801
    invoke-virtual/range {p0 .. p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v11

    .line 802
    .local v11, "size":I
    invoke-direct/range {p0 .. p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v16

    .line 803
    .local v16, "wireType":I
    shl-int/lit8 v18, p1, 0x3

    or-int v17, v18, v16

    .line 806
    .local v17, "wireTypeTag":I
    const/4 v13, 0x0

    .line 808
    .local v13, "totalSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v11, :cond_6

    .line 809
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move-result v18

    add-int v13, v13, v18

    .line 810
    const/4 v3, 0x0

    .line 811
    .local v3, "added":Z
    invoke-virtual/range {p2 .. p2}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->availableContent()I

    move-result v6

    .line 812
    .local v6, "contentStart":I
    packed-switch v16, :pswitch_data_0

    .line 865
    :pswitch_0
    new-instance v18, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v18

    .line 815
    :pswitch_1
    const/16 v18, 0x13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v8, v2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    .line 816
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 817
    .local v14, "v":J
    const/16 v18, 0x5

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    const/4 v5, 0x4

    .line 818
    .local v5, "cnt":I
    :goto_1
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_2
    if-ge v4, v5, :cond_2

    .line 819
    const-wide/16 v18, 0xff

    and-long v18, v18, v14

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->write(I)V

    .line 820
    const/16 v18, 0x8

    shr-long v14, v14, v18

    .line 818
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 817
    .end local v4    # "b":I
    .end local v5    # "cnt":I
    :cond_0
    const/16 v5, 0x8

    goto :goto_1

    .line 825
    .end local v14    # "v":J
    :pswitch_2
    const/16 v18, 0x13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v8, v2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 826
    .restart local v14    # "v":J
    invoke-direct/range {p0 .. p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 827
    invoke-static {v14, v15}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v14

    .line 829
    :cond_1
    move-object/from16 v0, p2

    invoke-static {v0, v14, v15}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    .line 867
    .end local v14    # "v":J
    :cond_2
    :goto_3
    if-nez v3, :cond_3

    .line 868
    invoke-virtual/range {p2 .. p2}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->availableContent()I

    move-result v18

    sub-int v18, v18, v6

    add-int v13, v13, v18

    .line 808
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 834
    :pswitch_3
    invoke-virtual/range {p0 .. p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v18

    const/16 v19, 0x1b

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/16 v18, 0x10

    .line 833
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v8, v2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v9

    .line 838
    .local v9, "o":Ljava/lang/Object;
    instance-of v0, v9, [B

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 839
    check-cast v9, [B

    .end local v9    # "o":Ljava/lang/Object;
    move-object v7, v9

    check-cast v7, [B

    .line 840
    .local v7, "data":[B
    array-length v0, v7

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    .line 841
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->write([B)V

    goto :goto_3

    .line 834
    .end local v7    # "data":[B
    :cond_4
    const/16 v18, 0x19

    goto :goto_4

    .line 843
    .restart local v9    # "o":Ljava/lang/Object;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->availableContent()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->addMarker(I)V

    .line 845
    invoke-virtual/range {p2 .. p2}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->numMarkers()I

    move-result v12

    .line 846
    .local v12, "tmpPos":I
    const/16 v18, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->addMarker(I)V

    .line 847
    check-cast v9, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    .end local v9    # "o":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->outputToInternal(Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;)I

    move-result v10

    .line 849
    .local v10, "protoSize":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v10}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->setMarker(II)V

    .line 851
    int-to-long v0, v10

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v18

    add-int v18, v18, v10

    add-int v13, v13, v18

    .line 852
    const/4 v3, 0x1

    .line 854
    goto :goto_3

    .line 858
    .end local v10    # "protoSize":I
    .end local v12    # "tmpPos":I
    :pswitch_4
    const/16 v18, 0x1a

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v8, v2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    .line 859
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->outputToInternal(Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;)I

    move-result v18

    add-int v13, v13, v18

    .line 860
    shl-int/lit8 v18, p1, 0x3

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move-result v18

    add-int v13, v13, v18

    .line 861
    const/4 v3, 0x1

    .line 862
    goto/16 :goto_3

    .line 871
    .end local v3    # "added":Z
    .end local v6    # "contentStart":I
    :cond_6
    return v13

    .line 812
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private outputTo(Ljava/io/OutputStream;Z)V
    .locals 8
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "addSize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 755
    new-instance v2, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;

    invoke-direct {v2}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;-><init>()V

    .line 756
    .local v2, "mos":Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;
    invoke-direct {p0, v2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->outputToInternal(Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;)I

    move-result v5

    .line 758
    .local v5, "size":I
    if-eqz p2, :cond_0

    move-object v6, p1

    .line 760
    check-cast v6, Ljava/io/DataOutput;

    invoke-interface {v6, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 763
    :cond_0
    const/4 v4, 0x0

    .line 764
    .local v4, "previous":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->numMarkers()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 765
    invoke-virtual {v2, v1}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->getMarker(I)I

    move-result v0

    .line 766
    .local v0, "current":I
    sub-int v6, v0, v4

    invoke-virtual {v2, p1, v4, v6}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->writeContentsTo(Ljava/io/OutputStream;II)V

    .line 767
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v6}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->getMarker(I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {p1, v6, v7}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    .line 768
    move v4, v0

    .line 764
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 770
    .end local v0    # "current":I
    :cond_1
    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->availableContent()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 771
    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->availableContent()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v2, p1, v4, v6}, Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;->writeContentsTo(Ljava/io/OutputStream;II)V

    .line 773
    :cond_2
    return-void
.end method

.method private outputToInternal(Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;)I
    .locals 4
    .param p1, "os"    # Lcom/google/userfeedback/android/api/common/io/MarkedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 782
    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->values:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v3}, Lcom/google/userfeedback/android/api/common/util/IntMap;->keys()Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;

    move-result-object v0

    .line 783
    .local v0, "itr":Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;
    const/4 v2, 0x0

    .line 784
    .local v2, "totalSize":I
    :goto_0
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 785
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->next()I

    move-result v1

    .line 786
    .local v1, "tag":I
    invoke-direct {p0, v1, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->outputField(ILcom/google/userfeedback/android/api/common/io/MarkedOutputStream;)I

    move-result v3

    add-int/2addr v2, v3

    .line 787
    goto :goto_0

    .line 788
    .end local v1    # "tag":I
    :cond_0
    return v2
.end method

.method private parseInternal(Ljava/io/InputStream;IZLcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;)I
    .locals 24
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "available"    # I
    .param p3, "clear"    # Z
    .param p4, "counter"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    if-eqz p3, :cond_0

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->clear()V

    .line 419
    :cond_0
    :goto_0
    if-lez p2, :cond_1

    .line 420
    const/16 v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v13

    .line 422
    .local v13, "tagAndType":J
    const-wide/16 v21, -0x1

    cmp-long v21, v13, v21

    if-nez v21, :cond_2

    .line 503
    .end local v13    # "tagAndType":J
    :cond_1
    if-gez p2, :cond_c

    .line 504
    new-instance v21, Ljava/io/IOException;

    invoke-direct/range {v21 .. v21}, Ljava/io/IOException;-><init>()V

    throw v21

    .line 425
    .restart local v13    # "tagAndType":J
    :cond_2
    move-object/from16 v0, p4

    iget v0, v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    move/from16 v21, v0

    sub-int p2, p2, v21

    .line 426
    long-to-int v0, v13

    move/from16 v21, v0

    and-int/lit8 v20, v21, 0x7

    .line 427
    .local v20, "wireType":I
    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 430
    const/16 v21, 0x3

    ushr-long v21, v13, v21

    move-wide/from16 v0, v21

    long-to-int v12, v0

    .line 432
    .local v12, "tag":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v15

    .line 433
    .local v15, "tagType":I
    const/16 v21, 0x10

    move/from16 v0, v21

    if-ne v15, v0, :cond_4

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/userfeedback/android/api/common/util/IntMap;

    move-object/from16 v21, v0

    if-nez v21, :cond_3

    .line 435
    new-instance v21, Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-direct/range {v21 .. v21}, Lcom/google/userfeedback/android/api/common/util/IntMap;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/userfeedback/android/api/common/util/IntMap;

    .line 437
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/userfeedback/android/api/common/util/IntMap;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v20}, Lcom/google/userfeedback/android/api/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Lcom/google/userfeedback/android/api/common/util/IntMap;->put(ILjava/lang/Object;)V

    .line 438
    move/from16 v15, v20

    .line 443
    :cond_4
    packed-switch v20, :pswitch_data_0

    .line 497
    :pswitch_0
    new-instance v21, Ljava/io/IOException;

    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v23, 0x34

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v23, "Unknown wire type "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", reading garbage data?"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 445
    :pswitch_1
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v17

    .line 446
    .local v17, "v":J
    move-object/from16 v0, p4

    iget v0, v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    move/from16 v21, v0

    sub-int p2, p2, v21

    .line 447
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 448
    invoke-static/range {v17 .. v18}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->zigZagDecode(J)J

    move-result-wide v17

    .line 450
    :cond_5
    invoke-static/range {v17 .. v18}, Lcom/google/userfeedback/android/api/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v19

    .line 500
    .end local v17    # "v":J
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 456
    :pswitch_2
    const-wide/16 v17, 0x0

    .line 457
    .restart local v17    # "v":J
    const/4 v11, 0x0

    .line 458
    .local v11, "shift":I
    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const/4 v4, 0x4

    .line 459
    .local v4, "count":I
    :goto_2
    sub-int p2, p2, v4

    move v5, v4

    .line 461
    .end local v4    # "count":I
    .local v5, "count":I
    :goto_3
    add-int/lit8 v4, v5, -0x1

    .end local v5    # "count":I
    .restart local v4    # "count":I
    if-lez v5, :cond_7

    .line 462
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v21

    move/from16 v0, v21

    int-to-long v8, v0

    .line 463
    .local v8, "l":J
    shl-long v21, v8, v11

    or-long v17, v17, v21

    .line 464
    add-int/lit8 v11, v11, 0x8

    move v5, v4

    .line 465
    .end local v4    # "count":I
    .restart local v5    # "count":I
    goto :goto_3

    .line 458
    .end local v5    # "count":I
    .end local v8    # "l":J
    :cond_6
    const/16 v4, 0x8

    goto :goto_2

    .line 467
    .restart local v4    # "count":I
    :cond_7
    invoke-static/range {v17 .. v18}, Lcom/google/userfeedback/android/api/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v19

    .line 468
    .local v19, "value":Ljava/lang/Long;
    goto :goto_1

    .line 471
    .end local v4    # "count":I
    .end local v11    # "shift":I
    .end local v17    # "v":J
    .end local v19    # "value":Ljava/lang/Long;
    :pswitch_3
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v16, v0

    .line 472
    .local v16, "total":I
    move-object/from16 v0, p4

    iget v0, v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    move/from16 v21, v0

    sub-int p2, p2, v21

    .line 473
    sub-int p2, p2, v16

    .line 475
    if-nez v16, :cond_8

    sget-object v6, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->EMPTY_BYTE_ARRAY:[B

    .line 476
    .local v6, "data":[B
    :goto_4
    const/4 v10, 0x0

    .line 477
    .local v10, "pos":I
    :goto_5
    move/from16 v0, v16

    if-ge v10, v0, :cond_a

    .line 478
    sub-int v21, v16, v10

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v6, v10, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 479
    .restart local v4    # "count":I
    if-gtz v4, :cond_9

    .line 480
    new-instance v21, Ljava/io/IOException;

    const-string v22, "Unexp.EOF"

    invoke-direct/range {v21 .. v22}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 475
    .end local v4    # "count":I
    .end local v6    # "data":[B
    .end local v10    # "pos":I
    :cond_8
    move/from16 v0, v16

    new-array v6, v0, [B

    goto :goto_4

    .line 482
    .restart local v4    # "count":I
    .restart local v6    # "data":[B
    .restart local v10    # "pos":I
    :cond_9
    add-int/2addr v10, v4

    goto :goto_5

    .line 484
    .end local v4    # "count":I
    :cond_a
    move-object/from16 v19, v6

    .line 485
    .local v19, "value":[B
    goto :goto_1

    .line 488
    .end local v6    # "data":[B
    .end local v10    # "pos":I
    .end local v16    # "total":I
    .end local v19    # "value":[B
    :pswitch_4
    new-instance v7, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->msgType:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-object/from16 v21, v0

    if-nez v21, :cond_b

    const/16 v21, 0x0

    .line 490
    :goto_6
    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;-><init>(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;)V

    .line 492
    .local v7, "group":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v21

    move-object/from16 v3, p4

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;)I

    move-result p2

    .line 493
    move-object/from16 v19, v7

    .line 494
    .local v19, "value":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    goto/16 :goto_1

    .line 488
    .end local v7    # "group":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .end local v19    # "value":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->msgType:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-object/from16 v21, v0

    .line 490
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    goto :goto_6

    .line 507
    .end local v12    # "tag":I
    .end local v13    # "tagAndType":J
    .end local v15    # "tagType":I
    .end local v20    # "wireType":I
    :cond_c
    return p2

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static readVarInt(Ljava/io/InputStream;Z)J
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "permitEOF"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1454
    sget-object v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->NULL_COUNTER:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;

    invoke-static {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static readVarInt(Ljava/io/InputStream;ZLcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;)J
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "permitEOF"    # Z
    .param p2, "counter"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1474
    const-wide/16 v2, 0x0

    .line 1475
    .local v2, "result":J
    const/4 v4, 0x0

    .line 1477
    .local v4, "shift":I
    const/4 v5, 0x0

    iput v5, p2, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    .line 1481
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v5, 0xa

    if-ge v0, v5, :cond_2

    .line 1482
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 1484
    .local v1, "in":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    .line 1485
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1486
    const-wide/16 v5, -0x1

    .line 1500
    .end local v1    # "in":I
    :goto_1
    return-wide v5

    .line 1488
    .restart local v1    # "in":I
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v6, "EOF"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1491
    :cond_1
    and-int/lit8 v5, v1, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v4

    or-long/2addr v2, v5

    .line 1493
    and-int/lit16 v5, v1, 0x80

    if-nez v5, :cond_3

    .line 1499
    .end local v1    # "in":I
    :cond_2
    add-int/lit8 v5, v0, 0x1

    iput v5, p2, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    move-wide v5, v2

    .line 1500
    goto :goto_1

    .line 1497
    .restart local v1    # "in":I
    :cond_3
    add-int/lit8 v4, v4, 0x7

    .line 1481
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setObject(IILjava/lang/Object;)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    .line 1524
    if-gez p1, :cond_0

    .line 1525
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1527
    :cond_0
    if-eqz p3, :cond_1

    .line 1528
    invoke-direct {p0, p1, p3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    .line 1530
    :cond_1
    if-gez p2, :cond_2

    .line 1531
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1534
    :cond_2
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->values:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v2, p1}, Lcom/google/userfeedback/android/api/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1535
    .local v0, "current":Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/Vector;

    if-eqz v2, :cond_4

    move-object v1, v0

    .line 1537
    check-cast v1, Ljava/util/Vector;

    .line 1538
    .local v1, "v":Ljava/util/Vector;
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ne p2, v2, :cond_3

    .line 1539
    invoke-virtual {v1, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1567
    .end local v1    # "v":Ljava/util/Vector;
    :goto_0
    return-void

    .line 1541
    .restart local v1    # "v":Ljava/util/Vector;
    :cond_3
    invoke-virtual {v1, p3, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1543
    .end local v1    # "v":Ljava/util/Vector;
    :cond_4
    if-nez v0, :cond_6

    .line 1545
    if-lez p2, :cond_5

    .line 1546
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1548
    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    goto :goto_0

    .line 1551
    :cond_6
    packed-switch p2, :pswitch_data_0

    .line 1564
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1553
    :pswitch_0
    invoke-direct {p0, p1, p3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    goto :goto_0

    .line 1558
    :pswitch_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1559
    .restart local v1    # "v":Ljava/util/Vector;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1560
    invoke-virtual {v1, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1561
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->values:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v2, p1, v1}, Lcom/google/userfeedback/android/api/common/util/IntMap;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1551
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setObject(ILjava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 1508
    if-gez p1, :cond_0

    .line 1509
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1511
    :cond_0
    if-eqz p2, :cond_1

    .line 1512
    invoke-direct {p0, p1, p2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    .line 1514
    :cond_1
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->values:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/userfeedback/android/api/common/util/IntMap;->put(ILjava/lang/Object;)V

    .line 1515
    return-void
.end method

.method static writeVarInt(Ljava/io/OutputStream;J)I
    .locals 4
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1576
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 1578
    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    long-to-int v1, v2

    .line 1580
    .local v1, "toWrite":I
    const/4 v2, 0x7

    ushr-long/2addr p1, v2

    .line 1582
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 1583
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1584
    add-int/lit8 v0, v0, 0x1

    .line 1589
    .end local v0    # "i":I
    .end local v1    # "toWrite":I
    :cond_0
    return v0

    .line 1586
    .restart local v0    # "i":I
    .restart local v1    # "toWrite":I
    :cond_1
    or-int/lit16 v2, v1, 0x80

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1576
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static zigZagDecode(J)J
    .locals 4
    .param p0, "v"    # J

    .prologue
    .line 904
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long p0, v0, v2

    .line 905
    return-wide p0
.end method

.method private static zigZagEncode(J)J
    .locals 4
    .param p0, "v"    # J

    .prologue
    .line 896
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    ushr-long v2, p0, v2

    neg-long v2, v2

    xor-long p0, v0, v2

    .line 897
    return-wide p0
.end method


# virtual methods
.method public addBool(IZ)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Z

    .prologue
    .line 120
    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    .line 121
    return-void

    .line 120
    :cond_0
    sget-object v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public addBytes(I[B)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "value"    # [B

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    .line 128
    return-void
.end method

.method public addDouble(ID)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # D

    .prologue
    .line 156
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 157
    return-void
.end method

.method public addFloat(IF)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # F

    .prologue
    .line 149
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 150
    return-void
.end method

.method public addInt(II)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .prologue
    .line 134
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 135
    return-void
.end method

.method public addLong(IJ)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # J

    .prologue
    .line 141
    invoke-static {p2, p3}, Lcom/google/userfeedback/android/api/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    .line 142
    return-void
.end method

.method public addProtoBuf(ILcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "value"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    .line 165
    return-void
.end method

.method public addString(ILjava/lang/String;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    .line 172
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->values:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/common/util/IntMap;->clear()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/userfeedback/android/api/common/util/IntMap;

    .line 107
    return-void
.end method

.method public createGroup(I)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 113
    new-instance v1, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getType()Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;-><init>(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;)V

    return-object v1
.end method

.method public getBool(I)Z
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 178
    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 179
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBool(II)Z
    .locals 1
    .param p1, "tag"    # I
    .param p2, "index"    # I

    .prologue
    .line 186
    const/16 v0, 0x18

    invoke-direct {p0, p1, p2, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 187
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBytes(I)[B
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 194
    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getBytes(II)[B
    .locals 1
    .param p1, "tag"    # I
    .param p2, "index"    # I

    .prologue
    .line 201
    const/16 v0, 0x19

    invoke-direct {p0, p1, p2, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getCount(I)I
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->values:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/userfeedback/android/api/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getCachedDataSize(Z)I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(II)D
    .locals 2
    .param p1, "tag"    # I
    .param p2, "index"    # I

    .prologue
    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getLong(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getFloat(II)F
    .locals 1
    .param p1, "tag"    # I
    .param p2, "index"    # I

    .prologue
    .line 247
    invoke-virtual {p0, p1, p2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 208
    const/16 v0, 0x15

    invoke-direct {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getInt(II)I
    .locals 2
    .param p1, "tag"    # I
    .param p2, "index"    # I

    .prologue
    .line 215
    const/16 v0, 0x15

    invoke-direct {p0, p1, p2, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 216
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 223
    const/16 v0, 0x13

    invoke-direct {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(II)J
    .locals 2
    .param p1, "tag"    # I
    .param p2, "index"    # I

    .prologue
    .line 230
    const/16 v0, 0x13

    invoke-direct {p0, p1, p2, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumBytesUsed()I
    .locals 5

    .prologue
    .line 615
    iget-object v4, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->values:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v4}, Lcom/google/userfeedback/android/api/common/util/IntMap;->getNumBytesOverhead()I

    move-result v1

    .line 616
    .local v1, "numBytesUsed":I
    iget-object v4, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->values:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v4}, Lcom/google/userfeedback/android/api/common/util/IntMap;->keys()Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;

    move-result-object v0

    .line 617
    .local v0, "itr":Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;
    :goto_0
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 618
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->next()I

    move-result v2

    .line 619
    .local v2, "tag":I
    iget-object v4, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->values:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v4, v2}, Lcom/google/userfeedback/android/api/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 620
    .local v3, "value":Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getNumBytesUsed(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    .line 621
    goto :goto_0

    .line 622
    .end local v2    # "tag":I
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    return v1
.end method

.method public getProtoBuf(I)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 273
    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getProtoBuf(II)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "index"    # I

    .prologue
    .line 281
    const/16 v0, 0x1a

    invoke-direct {p0, p1, p2, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 289
    const/16 v0, 0x1c

    invoke-direct {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "index"    # I

    .prologue
    .line 297
    const/16 v0, 0x1c

    invoke-direct {p0, p1, p2, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType(I)I
    .locals 6
    .param p1, "tag"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x10

    .line 550
    const/16 v1, 0x10

    .line 551
    .local v1, "tagType":I
    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->msgType:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    if-eqz v3, :cond_0

    .line 552
    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->msgType:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v3, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->getType(I)I

    move-result v1

    .line 555
    :cond_0
    if-ne v1, v5, :cond_1

    .line 556
    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/userfeedback/android/api/common/util/IntMap;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v3, p1}, Lcom/google/userfeedback/android/api/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v2, v3

    .line 557
    .local v2, "tagTypeObj":Ljava/lang/Integer;
    :goto_0
    if-eqz v2, :cond_1

    .line 558
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 562
    .end local v2    # "tagTypeObj":Ljava/lang/Integer;
    :cond_1
    if-ne v1, v5, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    if-lez v3, :cond_3

    .line 563
    invoke-direct {p0, p1, v4, v5}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    .line 565
    .local v0, "o":Ljava/lang/Object;
    instance-of v3, v0, Ljava/lang/Long;

    if-nez v3, :cond_2

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    :cond_2
    move v1, v4

    .line 569
    .end local v0    # "o":Ljava/lang/Object;
    :cond_3
    :goto_1
    return v1

    .line 556
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 565
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_5
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public getType()Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->msgType:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    return-object v0
.end method

.method public has(I)Z
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertBool(IIZ)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "value"    # Z

    .prologue
    .line 1067
    if-eqz p3, :cond_0

    sget-object v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    .line 1068
    return-void

    .line 1067
    :cond_0
    sget-object v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public insertBytes(II[B)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "value"    # [B

    .prologue
    .line 1074
    invoke-direct {p0, p1, p2, p3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    .line 1075
    return-void
.end method

.method public insertDouble(IID)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "value"    # D

    .prologue
    .line 1103
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->insertLong(IIJ)V

    .line 1104
    return-void
.end method

.method public insertFloat(IIF)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "value"    # F

    .prologue
    .line 1096
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->insertInt(III)V

    .line 1097
    return-void
.end method

.method public insertInt(III)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "value"    # I

    .prologue
    .line 1081
    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->insertLong(IIJ)V

    .line 1082
    return-void
.end method

.method public insertLong(IIJ)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "value"    # J

    .prologue
    .line 1088
    invoke-static {p3, p4}, Lcom/google/userfeedback/android/api/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    .line 1089
    return-void
.end method

.method public insertProtoBuf(IILcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "pb"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    .prologue
    .line 1111
    invoke-direct {p0, p1, p2, p3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    .line 1112
    return-void
.end method

.method public insertString(IILjava/lang/String;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1118
    invoke-direct {p0, p1, p2, p3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    .line 1119
    return-void
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->msgType:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->msgType:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->isValidProto(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxTag()I
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->values:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/common/util/IntMap;->maxKey()I

    move-result v0

    return v0
.end method

.method public outputTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;Z)V

    .line 735
    return-void
.end method

.method public outputWithSizeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;Z)V

    .line 725
    return-void
.end method

.method public parse(Ljava/io/InputStream;I)I
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "available"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    const/4 v0, 0x1

    new-instance v1, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;-><init>(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$1;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf$SimpleCounter;)I

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 368
    return-object p0
.end method

.method public parse([B)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 353
    return-object p0
.end method

.method public remove(II)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "index"    # I

    .prologue
    .line 514
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 515
    .local v0, "count":I
    if-lt p2, v0, :cond_0

    .line 516
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 518
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 519
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->values:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v2, p1}, Lcom/google/userfeedback/android/api/common/util/IntMap;->remove(I)Ljava/lang/Object;

    .line 524
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->values:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v2, p1}, Lcom/google/userfeedback/android/api/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 522
    .local v1, "v":Ljava/util/Vector;
    invoke-virtual {v1, p2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0
.end method

.method public setBool(IIZ)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "value"    # Z

    .prologue
    .line 940
    if-eqz p3, :cond_0

    sget-object v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setObject(IILjava/lang/Object;)V

    .line 941
    return-void

    .line 940
    :cond_0
    sget-object v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setBool(IZ)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Z

    .prologue
    .line 930
    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 931
    return-void

    .line 930
    :cond_0
    sget-object v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setBytes(II[B)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "value"    # [B

    .prologue
    .line 957
    invoke-direct {p0, p1, p2, p3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setObject(IILjava/lang/Object;)V

    .line 958
    return-void
.end method

.method public setBytes(I[B)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "value"    # [B

    .prologue
    .line 947
    invoke-direct {p0, p1, p2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 948
    return-void
.end method

.method public setDouble(ID)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # D

    .prologue
    .line 998
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 999
    return-void
.end method

.method public setDouble(IID)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "value"    # D

    .prologue
    .line 1008
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setLong(IIJ)V

    .line 1009
    return-void
.end method

.method public setFloat(IF)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # F

    .prologue
    .line 1015
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 1016
    return-void
.end method

.method public setFloat(IIF)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "value"    # F

    .prologue
    .line 1025
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setInt(III)V

    .line 1026
    return-void
.end method

.method public setInt(II)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .prologue
    .line 964
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 965
    return-void
.end method

.method public setInt(III)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "value"    # I

    .prologue
    .line 974
    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setLong(IIJ)V

    .line 975
    return-void
.end method

.method public setLong(IIJ)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "value"    # J

    .prologue
    .line 991
    invoke-static {p3, p4}, Lcom/google/userfeedback/android/api/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setObject(IILjava/lang/Object;)V

    .line 992
    return-void
.end method

.method public setLong(IJ)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # J

    .prologue
    .line 981
    invoke-static {p2, p3}, Lcom/google/userfeedback/android/api/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 982
    return-void
.end method

.method public setProtoBuf(IILcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "pb"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    .prologue
    .line 1043
    invoke-direct {p0, p1, p2, p3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setObject(IILjava/lang/Object;)V

    .line 1044
    return-void
.end method

.method public setProtoBuf(ILcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "pb"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    .prologue
    .line 1032
    invoke-direct {p0, p1, p2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 1033
    return-void
.end method

.method public setString(IILjava/lang/String;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1060
    invoke-direct {p0, p1, p2, p3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setObject(IILjava/lang/Object;)V

    .line 1061
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1050
    invoke-direct {p0, p1, p2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 1051
    return-void
.end method

.method setType(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;)V
    .locals 1
    .param p1, "type"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->values:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/common/util/IntMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->msgType:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->msgType:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    if-eq p1, v0, :cond_1

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 319
    :cond_1
    iput-object p1, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->msgType:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/userfeedback/android/api/common/util/IntMap;

    .line 321
    return-void
.end method

.method public toByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 914
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 915
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 916
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
