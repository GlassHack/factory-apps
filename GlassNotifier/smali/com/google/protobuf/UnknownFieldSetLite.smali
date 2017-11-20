.class public final Lcom/google/protobuf/UnknownFieldSetLite;
.super Ljava/lang/Object;
.source "UnknownFieldSetLite.java"


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/UnknownFieldSetLite;

.field private static final MIN_CAPACITY:I = 0x8


# instance fields
.field private count:I

.field private isMutable:Z

.field private memoizedSerializedSize:I

.field private objects:[Ljava/lang/Object;

.field private tags:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/google/protobuf/UnknownFieldSetLite;

    new-array v1, v3, [I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/google/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 86
    const/4 v0, 0x0

    new-array v1, v2, [I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 87
    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "tags"    # [I
    .param p3, "objects"    # [Ljava/lang/Object;
    .param p4, "isMutable"    # Z

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 93
    iput p1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 94
    iput-object p2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    .line 95
    iput-object p3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 96
    iput-boolean p4, p0, Lcom/google/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 97
    return-void
.end method

.method private ensureCapacity()V
    .locals 4

    .prologue
    .line 377
    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 378
    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    const/16 v0, 0x8

    .line 379
    .local v0, "increment":I
    :goto_0
    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    add-int v1, v2, v0

    .line 381
    .local v1, "newLength":I
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    .line 382
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 384
    .end local v0    # "increment":I
    .end local v1    # "newLength":I
    :cond_0
    return-void

    .line 378
    :cond_1
    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    shr-int/lit8 v0, v2, 0x1

    goto :goto_0
.end method

.method private static equals([I[II)Z
    .locals 3
    .param p0, "tags1"    # [I
    .param p1, "tags2"    # [I
    .param p2, "count"    # I

    .prologue
    .line 297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 298
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 299
    const/4 v1, 0x0

    .line 302
    :goto_1
    return v1

    .line 297
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static equals([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 3
    .param p0, "objects1"    # [Ljava/lang/Object;
    .param p1, "objects2"    # [Ljava/lang/Object;
    .param p2, "count"    # I

    .prologue
    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 307
    aget-object v1, p0, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    const/4 v1, 0x0

    .line 311
    :goto_1
    return v1

    .line 306
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/google/protobuf/UnknownFieldSetLite;

    return-object v0
.end method

.method private mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 466
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->mergeFieldFrom(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    :cond_1
    return-object p0
.end method

.method static mutableCopyOf(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 7
    .param p0, "first"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p1, "second"    # Lcom/google/protobuf/UnknownFieldSetLite;

    .prologue
    const/4 v6, 0x0

    .line 49
    iget v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    iget v4, p1, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    add-int v0, v3, v4

    .line 50
    .local v0, "count":I
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 51
    .local v2, "tags":[I
    iget-object v3, p1, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    iget v4, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    iget v5, p1, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 53
    .local v1, "objects":[Ljava/lang/Object;
    iget-object v3, p1, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    iget v5, p1, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    new-instance v3, Lcom/google/protobuf/UnknownFieldSetLite;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v2, v1, v4}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object v3
.end method

.method static newInstance()Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-direct {v0}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>()V

    return-object v0
.end method

.method private static writeField(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 4
    .param p0, "tag"    # I
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 199
    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 200
    .local v0, "fieldNumber":I
    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 226
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 202
    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v0, v2, v3}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    .line 228
    :goto_0
    return-void

    .line 205
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto :goto_0

    .line 208
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v0, v2, v3}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_0

    .line 211
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_4
    check-cast p1, Lcom/google/protobuf/ByteString;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p2, v0, p1}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 214
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_5
    invoke-interface {p2}, Lcom/google/protobuf/Writer;->fieldOrder()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne v1, v2, :cond_0

    .line 215
    invoke-interface {p2, v0}, Lcom/google/protobuf/Writer;->writeStartGroup(I)V

    .line 216
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/Writer;)V

    .line 217
    invoke-interface {p2, v0}, Lcom/google/protobuf/Writer;->writeEndGroup(I)V

    goto :goto_0

    .line 219
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    invoke-interface {p2, v0}, Lcom/google/protobuf/Writer;->writeEndGroup(I)V

    .line 220
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/Writer;)V

    .line 221
    invoke-interface {p2, v0}, Lcom/google/protobuf/Writer;->writeStartGroup(I)V

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method checkMutable()V
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->isMutable:Z

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 115
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 316
    if-ne p0, p1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v1

    .line 320
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 321
    goto :goto_0

    .line 324
    :cond_2
    instance-of v3, p1, Lcom/google/protobuf/UnknownFieldSetLite;

    if-nez v3, :cond_3

    move v1, v2

    .line 325
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 328
    check-cast v0, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 329
    .local v0, "other":Lcom/google/protobuf/UnknownFieldSetLite;
    iget v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    iget v4, v0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    iget-object v4, v0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    iget v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 330
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/UnknownFieldSetLite;->equals([I[II)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 331
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/UnknownFieldSetLite;->equals([Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    .line 332
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 260
    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 261
    .local v2, "size":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    move v3, v2

    .line 293
    .end local v2    # "size":I
    .local v3, "size":I
    :goto_0
    return v3

    .line 265
    .end local v3    # "size":I
    .restart local v2    # "size":I
    :cond_0
    const/4 v2, 0x0

    .line 266
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-ge v1, v5, :cond_1

    .line 267
    iget-object v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v4, v5, v1

    .line 268
    .local v4, "tag":I
    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 269
    .local v0, "fieldNumber":I
    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 287
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 271
    :pswitch_1
    iget-object v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v2, v5

    .line 266
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 274
    :pswitch_2
    iget-object v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v5

    add-int/2addr v2, v5

    .line 275
    goto :goto_2

    .line 277
    :pswitch_3
    iget-object v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v5

    add-int/2addr v2, v5

    .line 278
    goto :goto_2

    .line 280
    :pswitch_4
    iget-object v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Lcom/google/protobuf/ByteString;

    invoke-static {v0, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v5

    add-int/2addr v2, v5

    .line 281
    goto :goto_2

    .line 283
    :pswitch_5
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    mul-int/lit8 v6, v5, 0x2

    iget-object v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 284
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v5

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 285
    goto :goto_2

    .line 291
    .end local v0    # "fieldNumber":I
    .end local v4    # "tag":I
    :cond_1
    iput v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    move v3, v2

    .line 293
    .end local v2    # "size":I
    .restart local v3    # "size":I
    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getSerializedSizeAsMessageSet()I
    .locals 6

    .prologue
    .line 236
    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 237
    .local v2, "size":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    move v3, v2

    .line 251
    .end local v2    # "size":I
    .local v3, "size":I
    :goto_0
    return v3

    .line 241
    .end local v3    # "size":I
    .restart local v2    # "size":I
    :cond_0
    const/4 v2, 0x0

    .line 242
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-ge v1, v5, :cond_1

    .line 243
    iget-object v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v4, v5, v1

    .line 244
    .local v4, "tag":I
    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 245
    .local v0, "fieldNumber":I
    iget-object v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Lcom/google/protobuf/ByteString;

    invoke-static {v0, v5}, Lcom/google/protobuf/CodedOutputStream;->computeRawMessageSetExtensionSize(ILcom/google/protobuf/ByteString;)I

    move-result v5

    add-int/2addr v2, v5

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 249
    .end local v0    # "fieldNumber":I
    .end local v4    # "tag":I
    :cond_1
    iput v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    move v3, v2

    .line 251
    .end local v2    # "size":I
    .restart local v3    # "size":I
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 340
    const/16 v0, 0x11

    .line 342
    .local v0, "hashCode":I
    iget v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit16 v0, v1, 0x20f

    .line 343
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int v0, v1, v2

    .line 344
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 346
    return v0
.end method

.method public makeImmutable()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 106
    return-void
.end method

.method mergeFieldFrom(ILcom/google/protobuf/CodedInputStream;)Z
    .locals 6
    .param p1, "tag"    # I
    .param p2, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 395
    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 396
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 397
    .local v0, "fieldNumber":I
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 420
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v2

    throw v2

    .line 399
    :pswitch_0
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 418
    :goto_0
    return v2

    .line 402
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_0

    .line 405
    :pswitch_2
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_0

    .line 408
    :pswitch_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_0

    .line 411
    :pswitch_4
    new-instance v1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-direct {v1}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>()V

    .line 412
    .local v1, "subFieldSet":Lcom/google/protobuf/UnknownFieldSetLite;
    invoke-direct {v1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/UnknownFieldSetLite;

    .line 413
    const/4 v3, 0x4

    .line 414
    invoke-static {v0, v3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v3

    .line 413
    invoke-virtual {p2, v3}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 415
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_0

    .line 418
    .end local v1    # "subFieldSet":Lcom/google/protobuf/UnknownFieldSetLite;
    :pswitch_5
    const/4 v2, 0x0

    goto :goto_0

    .line 397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method mergeLengthDelimitedField(ILcom/google/protobuf/ByteString;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 449
    if-nez p1, :cond_0

    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 455
    return-object p0
.end method

.method mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 433
    if-nez p1, :cond_0

    .line 434
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 439
    return-object p0
.end method

.method final printWithIndent(Ljava/lang/StringBuilder;I)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I

    .prologue
    .line 358
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-ge v1, v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 360
    .local v0, "fieldNumber":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-static {p1, p2, v2, v3}, Lcom/google/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .end local v0    # "fieldNumber":I
    :cond_0
    return-void
.end method

.method storeField(ILjava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/google/protobuf/UnknownFieldSetLite;->ensureCapacity()V

    .line 368
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    iget v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    aput p1, v0, v1

    .line 369
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    aput-object p2, v0, v1

    .line 370
    iget v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 371
    return-void
.end method

.method public writeAsMessageSetTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-ge v1, v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 158
    .local v0, "fieldNumber":I
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeRawMessageSetExtension(ILcom/google/protobuf/ByteString;)V

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "fieldNumber":I
    :cond_0
    return-void
.end method

.method writeAsMessageSetTo(Lcom/google/protobuf/Writer;)V
    .locals 4
    .param p1, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 165
    invoke-interface {p1}, Lcom/google/protobuf/Writer;->fieldOrder()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne v2, v3, :cond_0

    .line 167
    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 168
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 169
    .local v0, "fieldNumber":I
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v0, v2}, Lcom/google/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    .line 167
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 173
    .end local v0    # "fieldNumber":I
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-ge v1, v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 175
    .restart local v0    # "fieldNumber":I
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v0, v2}, Lcom/google/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 178
    .end local v0    # "fieldNumber":I
    :cond_1
    return-void
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-ge v1, v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v3, v1

    .line 125
    .local v2, "tag":I
    invoke-static {v2}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 126
    .local v0, "fieldNumber":I
    invoke-static {v2}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 145
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v3

    throw v3

    .line 128
    :pswitch_1
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 123
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    goto :goto_1

    .line 134
    :pswitch_3
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    goto :goto_1

    .line 137
    :pswitch_4
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto :goto_1

    .line 140
    :pswitch_5
    const/4 v3, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 141
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v3, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 142
    const/4 v3, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    goto :goto_1

    .line 148
    .end local v0    # "fieldNumber":I
    .end local v2    # "tag":I
    :cond_0
    return-void

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public writeTo(Lcom/google/protobuf/Writer;)V
    .locals 3
    .param p1, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 182
    iget v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-nez v1, :cond_1

    .line 196
    :cond_0
    return-void

    .line 187
    :cond_1
    invoke-interface {p1}, Lcom/google/protobuf/Writer;->fieldOrder()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne v1, v2, :cond_2

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeField(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "i":I
    :cond_2
    iget v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeField(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 192
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
