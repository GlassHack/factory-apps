.class public final Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufUtil;
.super Ljava/lang/Object;
.source "ProtoBufUtil.java"


# static fields
.field public static isGzipResponseSeen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufUtil;->isGzipResponseSeen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProtoBuf(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;I)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .locals 1
    .param p0, "proto"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .param p1, "tag"    # I

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 334
    .local v0, "child":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    invoke-virtual {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;)V

    .line 335
    return-object v0
.end method

.method public static cloneProtoBuf(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .locals 2
    .param p0, "input"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getType()Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;-><init>(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;)V

    .line 363
    .local v0, "out":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    .line 364
    return-object v0
.end method

.method public static createProtoBuf(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;I)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .locals 1
    .param p0, "proto"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .param p1, "tag"    # I

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 320
    .local v0, "child":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    invoke-virtual {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;)V

    .line 321
    return-object v0
.end method

.method public static getInputStreamForProtoBufResponse(Ljava/io/DataInput;)Ljava/io/InputStream;
    .locals 3
    .param p0, "dataInput"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 197
    .local v1, "size":I
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;

    check-cast p0, Ljava/io/InputStream;

    .line 198
    .end local p0    # "dataInput":Ljava/io/DataInput;
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 200
    .local v0, "is":Ljava/io/InputStream;
    if-gez v1, :cond_0

    .line 201
    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufUtil;->isGzipResponseSeen:Z

    .line 202
    invoke-static {v0}, Lcom/google/userfeedback/android/api/common/io/Gunzipper;->gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 204
    :cond_0
    return-object v0
.end method

.method public static getProtoLongValueOrDefault(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;IJ)J
    .locals 2
    .param p0, "proto"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .param p1, "tag"    # I
    .param p2, "defaultValue"    # J

    .prologue
    .line 104
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide p2

    .line 108
    .end local p2    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p2

    .line 105
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public static getProtoLongValueOrZero(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;I)J
    .locals 4
    .param p0, "proto"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .param p1, "tag"    # I

    .prologue
    const-wide/16 v1, 0x0

    .line 136
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    .line 140
    :cond_0
    :goto_0
    return-wide v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 139
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public static getProtoValueOrDefault(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;II)I
    .locals 2
    .param p0, "proto"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .param p1, "tag"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 83
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result p2

    .line 88
    .end local p2    # "defaultValue":I
    :cond_0
    :goto_0
    return p2

    .line 85
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public static getProtoValueOrEmpty(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    .locals 2
    .param p0, "proto"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .param p1, "tag"    # I

    .prologue
    .line 30
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    :goto_0
    return-object v1

    .line 30
    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v1, ""

    goto :goto_0
.end method

.method public static getProtoValueOrFalse(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;I)Z
    .locals 3
    .param p0, "proto"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .param p1, "tag"    # I

    .prologue
    const/4 v1, 0x0

    .line 174
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getBool(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 178
    :cond_0
    :goto_0
    return v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 177
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public static getProtoValueOrNegativeOne(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;I)J
    .locals 4
    .param p0, "proto"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .param p1, "tag"    # I

    .prologue
    const-wide/16 v1, -0x1

    .line 155
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    .line 159
    :cond_0
    :goto_0
    return-wide v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public static getProtoValueOrNull(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    .locals 3
    .param p0, "proto"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .param p1, "tag"    # I

    .prologue
    const/4 v1, 0x0

    .line 39
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 41
    :cond_0
    :goto_0
    return-object v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public static getProtoValueOrNull(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;II)Ljava/lang/String;
    .locals 3
    .param p0, "proto"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .param p1, "tag"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 48
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    if-le v2, p2, :cond_0

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 51
    :cond_0
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public static getProtoValueOrZero(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;I)I
    .locals 1
    .param p0, "proto"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .param p1, "tag"    # I

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufUtil;->getProtoValueOrDefault(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;II)I

    move-result v0

    return v0
.end method

.method public static getSubProtoOrNull(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;I)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .locals 1
    .param p0, "proto"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .param p1, "sub"    # I

    .prologue
    .line 67
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSubProtoValueOrDefault(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;III)I
    .locals 2
    .param p0, "proto"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .param p1, "sub"    # I
    .param p2, "tag"    # I
    .param p3, "defaultValue"    # I

    .prologue
    .line 301
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufUtil;->getSubProtoOrNull(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;I)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufUtil;->getProtoValueOrDefault(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;II)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result p3

    .line 306
    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .line 303
    .restart local p3    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 305
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public static getSubProtoValueOrEmpty(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;II)Ljava/lang/String;
    .locals 2
    .param p0, "proto"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .param p1, "sub"    # I
    .param p2, "tag"    # I

    .prologue
    .line 59
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufUtil;->getSubProtoOrNull(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;I)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufUtil;->getProtoValueOrEmpty(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 61
    :goto_0
    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v1, ""

    goto :goto_0
.end method

.method public static getSubProtoValueOrNegativeOne(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;II)J
    .locals 4
    .param p0, "proto"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .param p1, "sub"    # I
    .param p2, "tag"    # I

    .prologue
    const-wide/16 v1, -0x1

    .line 277
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufUtil;->getSubProtoOrNull(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;I)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufUtil;->getProtoValueOrNegativeOne(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    .line 281
    :goto_0
    return-wide v1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 280
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public static readNextProtoBuf(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;Ljava/io/InputStream;Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;)I
    .locals 8
    .param p0, "umbrellaType"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "result"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v4, 0x1

    invoke-static {p1, v4}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v2

    .line 225
    .local v2, "tagAndType":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 226
    const/4 v1, -0x1

    .line 237
    :goto_0
    return v1

    .line 229
    :cond_0
    const-wide/16 v4, 0x7

    and-long/2addr v4, v2

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 230
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Message expected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 232
    :cond_1
    const/4 v4, 0x3

    ushr-long v4, v2, v4

    long-to-int v1, v4

    .line 234
    .local v1, "tag":I
    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {p2, v4}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->setType(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;)V

    .line 235
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v4

    long-to-int v0, v4

    .line 236
    .local v0, "length":I
    invoke-virtual {p2, p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    goto :goto_0
.end method

.method public static readProtoBufResponse(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .locals 4
    .param p0, "protoBufType"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;
    .param p1, "dataInput"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v1, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    invoke-direct {v1, p0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;-><init>(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;)V

    .line 254
    .local v1, "response":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    invoke-static {p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufUtil;->getInputStreamForProtoBufResponse(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v0

    .line 255
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {v1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    .line 256
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 257
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 259
    :cond_0
    return-object v1
.end method

.method public static writeProtoBufToOutput(Ljava/io/DataOutput;Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;)V
    .locals 3
    .param p0, "output"    # Ljava/io/DataOutput;
    .param p1, "protoBuf"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 348
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1, v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 349
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 350
    .local v1, "bytes":[B
    array-length v2, v1

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 351
    invoke-interface {p0, v1}, Ljava/io/DataOutput;->write([B)V

    .line 352
    return-void
.end method
