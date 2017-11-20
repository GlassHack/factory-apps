.class Lcom/google/glass/camera/exif/ExifModifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ExifModifier"


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mInterface:Lcom/google/glass/camera/exif/ExifInterface;

.field private mOffsetBase:I

.field private final mTagOffsets:Ljava/util/List;

.field private final mTagToModified:Lcom/google/glass/camera/exif/ExifData;


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/google/glass/camera/exif/ExifInterface;)V
    .locals 4

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lcom/google/glass/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/google/glass/camera/exif/ExifModifier;->mOffsetBase:I

    .line 52
    iput-object p2, p0, Lcom/google/glass/camera/exif/ExifModifier;->mInterface:Lcom/google/glass/camera/exif/ExifInterface;

    .line 53
    const/4 v2, 0x0

    .line 55
    :try_start_0
    new-instance v1, Lcom/google/glass/camera/exif/ByteBufferInputStream;

    invoke-direct {v1, p1}, Lcom/google/glass/camera/exif/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifModifier;->mInterface:Lcom/google/glass/camera/exif/ExifInterface;

    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/google/glass/camera/exif/ExifInterface;)Lcom/google/glass/camera/exif/ExifParser;

    move-result-object v0

    .line 58
    new-instance v2, Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/glass/camera/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v2, p0, Lcom/google/glass/camera/exif/ExifModifier;->mTagToModified:Lcom/google/glass/camera/exif/ExifData;

    .line 59
    iget v2, p0, Lcom/google/glass/camera/exif/ExifModifier;->mOffsetBase:I

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifParser;->getTiffStartPosition()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/glass/camera/exif/ExifModifier;->mOffsetBase:I

    .line 60
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 64
    return-void

    .line 62
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private modify()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifModifier;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 143
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/exif/ExifModifier$TagOffset;

    .line 144
    iget-object v2, v0, Lcom/google/glass/camera/exif/ExifModifier$TagOffset;->mTag:Lcom/google/glass/camera/exif/ExifTag;

    iget v0, v0, Lcom/google/glass/camera/exif/ExifModifier$TagOffset;->mOffset:I

    invoke-direct {p0, v2, v0}, Lcom/google/glass/camera/exif/ExifModifier;->writeTagValue(Lcom/google/glass/camera/exif/ExifTag;I)V

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method private writeTagValue(Lcom/google/glass/camera/exif/ExifTag;I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 153
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/glass/camera/exif/ExifModifier;->mOffsetBase:I

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getDataType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 191
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 156
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getStringByte()[B

    move-result-object v1

    .line 157
    array-length v2, v1

    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 158
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-byte v0, v1, v2

    .line 159
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/google/glass/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 162
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 167
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_0

    .line 168
    iget-object v2, p0, Lcom/google/glass/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_0

    .line 174
    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/ExifTag;->getRational(I)Lcom/google/glass/camera/exif/Rational;

    move-result-object v2

    .line 175
    iget-object v3, p0, Lcom/google/glass/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Lcom/google/glass/camera/exif/Rational;->getNumerator()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 176
    iget-object v3, p0, Lcom/google/glass/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Lcom/google/glass/camera/exif/Rational;->getDenominator()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 181
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 182
    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/ExifTag;->getBytes([B)V

    .line 183
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 186
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    :goto_3
    if-ge v0, v1, :cond_0

    .line 187
    iget-object v2, p0, Lcom/google/glass/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/google/glass/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected commit()Z
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 71
    const/4 v3, 0x0

    .line 73
    :try_start_0
    new-instance v2, Lcom/google/glass/camera/exif/ByteBufferInputStream;

    iget-object v4, p0, Lcom/google/glass/camera/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v2, v4}, Lcom/google/glass/camera/exif/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    const/4 v3, 0x5

    :try_start_1
    new-array v5, v3, [Lcom/google/glass/camera/exif/IfdData;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/camera/exif/ExifModifier;->mTagToModified:Lcom/google/glass/camera/exif/ExifData;

    const/4 v6, 0x0

    .line 76
    invoke-virtual {v4, v6}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/camera/exif/ExifModifier;->mTagToModified:Lcom/google/glass/camera/exif/ExifData;

    const/4 v6, 0x1

    .line 77
    invoke-virtual {v4, v6}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/glass/camera/exif/ExifModifier;->mTagToModified:Lcom/google/glass/camera/exif/ExifData;

    const/4 v6, 0x2

    .line 78
    invoke-virtual {v4, v6}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/glass/camera/exif/ExifModifier;->mTagToModified:Lcom/google/glass/camera/exif/ExifData;

    const/4 v6, 0x3

    .line 79
    invoke-virtual {v4, v6}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/glass/camera/exif/ExifModifier;->mTagToModified:Lcom/google/glass/camera/exif/ExifData;

    const/4 v6, 0x4

    .line 80
    invoke-virtual {v4, v6}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v4

    aput-object v4, v5, v3

    .line 83
    const/4 v3, 0x0

    aget-object v3, v5, v3

    if-eqz v3, :cond_a

    move v3, v1

    .line 86
    :goto_0
    const/4 v4, 0x1

    aget-object v4, v5, v4

    if-eqz v4, :cond_0

    .line 87
    or-int/lit8 v3, v3, 0x2

    .line 89
    :cond_0
    const/4 v4, 0x2

    aget-object v4, v5, v4

    if-eqz v4, :cond_1

    .line 90
    or-int/lit8 v3, v3, 0x4

    .line 92
    :cond_1
    const/4 v4, 0x4

    aget-object v4, v5, v4

    if-eqz v4, :cond_2

    .line 93
    or-int/lit8 v3, v3, 0x8

    .line 95
    :cond_2
    const/4 v4, 0x3

    aget-object v4, v5, v4

    if-eqz v4, :cond_3

    .line 96
    or-int/lit8 v3, v3, 0x10

    .line 99
    :cond_3
    iget-object v4, p0, Lcom/google/glass/camera/exif/ExifModifier;->mInterface:Lcom/google/glass/camera/exif/ExifInterface;

    invoke-static {v2, v3, v4}, Lcom/google/glass/camera/exif/ExifParser;->parse(Ljava/io/InputStream;ILcom/google/glass/camera/exif/ExifInterface;)Lcom/google/glass/camera/exif/ExifParser;

    move-result-object v6

    .line 100
    invoke-virtual {v6}, Lcom/google/glass/camera/exif/ExifParser;->next()I

    move-result v4

    .line 101
    const/4 v3, 0x0

    .line 102
    :goto_1
    const/4 v7, 0x5

    if-eq v4, v7, :cond_7

    .line 103
    packed-switch v4, :pswitch_data_0

    .line 127
    :cond_4
    :goto_2
    invoke-virtual {v6}, Lcom/google/glass/camera/exif/ExifParser;->next()I

    move-result v4

    goto :goto_1

    .line 105
    :pswitch_0
    invoke-virtual {v6}, Lcom/google/glass/camera/exif/ExifParser;->getCurrentIfd()I

    move-result v3

    aget-object v3, v5, v3

    .line 106
    if-nez v3, :cond_4

    .line 107
    invoke-virtual {v6}, Lcom/google/glass/camera/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 136
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 111
    :pswitch_1
    :try_start_2
    invoke-virtual {v6}, Lcom/google/glass/camera/exif/ExifParser;->getTag()Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v4

    .line 112
    invoke-virtual {v4}, Lcom/google/glass/camera/exif/ExifTag;->getTagId()S

    move-result v7

    invoke-virtual {v3, v7}, Lcom/google/glass/camera/exif/IfdData;->getTag(S)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v7

    .line 113
    if-eqz v7, :cond_4

    .line 114
    invoke-virtual {v7}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v8

    invoke-virtual {v4}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v9

    if-ne v8, v9, :cond_5

    .line 115
    invoke-virtual {v7}, Lcom/google/glass/camera/exif/ExifTag;->getDataType()S

    move-result v8

    invoke-virtual {v4}, Lcom/google/glass/camera/exif/ExifTag;->getDataType()S
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-eq v8, v9, :cond_6

    .line 136
    :cond_5
    invoke-static {v2}, Lcom/google/glass/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 138
    :goto_4
    return v0

    .line 118
    :cond_6
    :try_start_3
    iget-object v8, p0, Lcom/google/glass/camera/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    new-instance v9, Lcom/google/glass/camera/exif/ExifModifier$TagOffset;

    invoke-virtual {v4}, Lcom/google/glass/camera/exif/ExifTag;->getOffset()I

    move-result v10

    invoke-direct {v9, v7, v10}, Lcom/google/glass/camera/exif/ExifModifier$TagOffset;-><init>(Lcom/google/glass/camera/exif/ExifTag;I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v4}, Lcom/google/glass/camera/exif/ExifTag;->getTagId()S

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/glass/camera/exif/IfdData;->removeTag(S)V

    .line 120
    invoke-virtual {v3}, Lcom/google/glass/camera/exif/IfdData;->getTagCount()I

    move-result v4

    if-nez v4, :cond_4

    .line 121
    invoke-virtual {v6}, Lcom/google/glass/camera/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto :goto_2

    .line 129
    :cond_7
    array-length v4, v5

    move v3, v0

    :goto_5
    if-ge v3, v4, :cond_9

    aget-object v6, v5, v3

    .line 130
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/google/glass/camera/exif/IfdData;->getTagCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-lez v6, :cond_8

    .line 136
    invoke-static {v2}, Lcom/google/glass/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4

    .line 129
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 134
    :cond_9
    :try_start_4
    invoke-direct {p0}, Lcom/google/glass/camera/exif/ExifModifier;->modify()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    invoke-static {v2}, Lcom/google/glass/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    move v0, v1

    .line 138
    goto :goto_4

    .line 136
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_3

    :cond_a
    move v3, v0

    goto/16 :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifModifier;->mTagToModified:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public modifyTag(Lcom/google/glass/camera/exif/ExifTag;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifModifier;->mTagToModified:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/exif/ExifData;->addTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    .line 195
    return-void
.end method
