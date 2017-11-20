.class public final Lcom/google/protobuf/nano/InternalNano;
.super Ljava/lang/Object;
.source "InternalNano.java"


# static fields
.field protected static final ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final LAZY_INIT_LOCK:Ljava/lang/Object;

.field protected static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    .line 49
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/InternalNano;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesDefaultValue(Ljava/lang/String;)[B
    .locals 1
    .param p0, "bytes"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static cloneUnknownFieldData(Lcom/google/protobuf/nano/ExtendableMessageNano;Lcom/google/protobuf/nano/ExtendableMessageNano;)V
    .locals 1
    .param p0, "original"    # Lcom/google/protobuf/nano/ExtendableMessageNano;
    .param p1, "cloned"    # Lcom/google/protobuf/nano/ExtendableMessageNano;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v0}, Lcom/google/protobuf/nano/FieldArray;->clone()Lcom/google/protobuf/nano/FieldArray;

    move-result-object v0

    iput-object v0, p1, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 324
    :cond_0
    return-void
.end method

.method public static copyFromUtf8(Ljava/lang/String;)[B
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 112
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static equals([D[D)Z
    .locals 1
    .param p0, "field1"    # [D
    .param p1, "field2"    # [D

    .prologue
    .line 156
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_3

    .line 157
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    .line 157
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([F[F)Z
    .locals 1
    .param p0, "field1"    # [F
    .param p1, "field2"    # [F

    .prologue
    .line 144
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_3

    .line 145
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    .line 145
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([I[I)Z
    .locals 1
    .param p0, "field1"    # [I
    .param p1, "field2"    # [I

    .prologue
    .line 120
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_3

    .line 121
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    .line 121
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([J[J)Z
    .locals 1
    .param p0, "field1"    # [J
    .param p1, "field2"    # [J

    .prologue
    .line 132
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_3

    .line 133
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    .line 133
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 10
    .param p0, "field1"    # [Ljava/lang/Object;
    .param p1, "field2"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 217
    const/4 v2, 0x0

    .line 218
    .local v2, "index1":I
    if-nez p0, :cond_0

    move v4, v6

    .line 219
    .local v4, "length1":I
    :goto_0
    const/4 v3, 0x0

    .line 220
    .local v3, "index2":I
    if-nez p1, :cond_1

    move v5, v6

    .line 222
    .local v5, "length2":I
    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v8, p0, v2

    if-nez v8, :cond_2

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 218
    .end local v3    # "index2":I
    .end local v4    # "length1":I
    .end local v5    # "length2":I
    :cond_0
    array-length v4, p0

    goto :goto_0

    .line 220
    .restart local v3    # "index2":I
    .restart local v4    # "length1":I
    :cond_1
    array-length v5, p1

    goto :goto_1

    .line 225
    .restart local v5    # "length2":I
    :cond_2
    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v8, p1, v3

    if-nez v8, :cond_3

    .line 226
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 228
    :cond_3
    if-lt v2, v4, :cond_5

    move v0, v7

    .line 229
    .local v0, "atEndOf1":Z
    :goto_3
    if-lt v3, v5, :cond_6

    move v1, v7

    .line 230
    .local v1, "atEndOf2":Z
    :goto_4
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    move v6, v7

    .line 238
    :cond_4
    return v6

    .end local v0    # "atEndOf1":Z
    .end local v1    # "atEndOf2":Z
    :cond_5
    move v0, v6

    .line 228
    goto :goto_3

    .restart local v0    # "atEndOf1":Z
    :cond_6
    move v1, v6

    .line 229
    goto :goto_4

    .line 233
    .restart local v1    # "atEndOf2":Z
    :cond_7
    if-ne v0, v1, :cond_4

    .line 236
    aget-object v8, p0, v2

    aget-object v9, p1, v3

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 240
    add-int/lit8 v2, v2, 0x1

    .line 241
    add-int/lit8 v3, v3, 0x1

    .line 242
    goto :goto_1
.end method

.method public static equals([Z[Z)Z
    .locals 1
    .param p0, "field1"    # [Z
    .param p1, "field2"    # [Z

    .prologue
    .line 168
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_3

    .line 169
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    .line 169
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 171
    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([[B[[B)Z
    .locals 10
    .param p0, "field1"    # [[B
    .param p1, "field2"    # [[B

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 182
    const/4 v2, 0x0

    .line 183
    .local v2, "index1":I
    if-nez p0, :cond_0

    move v4, v6

    .line 184
    .local v4, "length1":I
    :goto_0
    const/4 v3, 0x0

    .line 185
    .local v3, "index2":I
    if-nez p1, :cond_1

    move v5, v6

    .line 187
    .local v5, "length2":I
    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v8, p0, v2

    if-nez v8, :cond_2

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 183
    .end local v3    # "index2":I
    .end local v4    # "length1":I
    .end local v5    # "length2":I
    :cond_0
    array-length v4, p0

    goto :goto_0

    .line 185
    .restart local v3    # "index2":I
    .restart local v4    # "length1":I
    :cond_1
    array-length v5, p1

    goto :goto_1

    .line 190
    .restart local v5    # "length2":I
    :cond_2
    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v8, p1, v3

    if-nez v8, :cond_3

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 193
    :cond_3
    if-lt v2, v4, :cond_5

    move v0, v7

    .line 194
    .local v0, "atEndOf1":Z
    :goto_3
    if-lt v3, v5, :cond_6

    move v1, v7

    .line 195
    .local v1, "atEndOf2":Z
    :goto_4
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    move v6, v7

    .line 203
    :cond_4
    return v6

    .end local v0    # "atEndOf1":Z
    .end local v1    # "atEndOf2":Z
    :cond_5
    move v0, v6

    .line 193
    goto :goto_3

    .restart local v0    # "atEndOf1":Z
    :cond_6
    move v1, v6

    .line 194
    goto :goto_4

    .line 198
    .restart local v1    # "atEndOf2":Z
    :cond_7
    if-ne v0, v1, :cond_4

    .line 201
    aget-object v8, p0, v2

    aget-object v9, p1, v3

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 205
    add-int/lit8 v2, v2, 0x1

    .line 206
    add-int/lit8 v3, v3, 0x1

    .line 207
    goto :goto_1
.end method

.method public static hashCode([D)I
    .locals 1
    .param p0, "field"    # [D

    .prologue
    .line 274
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([F)I
    .locals 1
    .param p0, "field"    # [F

    .prologue
    .line 266
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([I)I
    .locals 1
    .param p0, "field"    # [I

    .prologue
    .line 250
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([J)I
    .locals 1
    .param p0, "field"    # [J

    .prologue
    .line 258
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 6
    .param p0, "field"    # [Ljava/lang/Object;

    .prologue
    .line 308
    const/4 v2, 0x0

    .line 309
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 310
    aget-object v0, p0, v1

    .line 311
    .local v0, "element":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 312
    mul-int/lit8 v4, v2, 0x1f

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int v2, v4, v5

    .line 309
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "element":Ljava/lang/Object;
    .end local v3    # "size":I
    :cond_1
    array-length v3, p0

    goto :goto_0

    .line 315
    .restart local v3    # "size":I
    :cond_2
    return v2
.end method

.method public static hashCode([Z)I
    .locals 1
    .param p0, "field"    # [Z

    .prologue
    .line 282
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([[B)I
    .locals 6
    .param p0, "field"    # [[B

    .prologue
    .line 291
    const/4 v2, 0x0

    .line 292
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 293
    aget-object v0, p0, v1

    .line 294
    .local v0, "element":[B
    if-eqz v0, :cond_0

    .line 295
    mul-int/lit8 v4, v2, 0x1f

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v5

    add-int v2, v4, v5

    .line 292
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "element":[B
    .end local v3    # "size":I
    :cond_1
    array-length v3, p0

    goto :goto_0

    .line 298
    .restart local v3    # "size":I
    :cond_2
    return v2
.end method

.method public static stringDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
