.class Lcom/google/protobuf/nano/FieldData;
.super Ljava/lang/Object;
.source "FieldData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private cachedExtension:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<**>;"
        }
    .end annotation
.end field

.field private unknownFieldData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/nano/UnknownFieldData;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    .line 55
    return-void
.end method

.method constructor <init>(Lcom/google/protobuf/nano/Extension;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/Extension",
            "<*TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "extension":Lcom/google/protobuf/nano/Extension;, "Lcom/google/protobuf/nano/Extension<*TT;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    .line 50
    iput-object p2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method private toByteArray()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v2

    new-array v1, v2, [B

    .line 208
    .local v1, "result":[B
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    .line 209
    .local v0, "output":Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/FieldData;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 210
    return-object v1
.end method


# virtual methods
.method addUnknownField(Lcom/google/protobuf/nano/UnknownFieldData;)V
    .locals 1
    .param p1, "unknownField"    # Lcom/google/protobuf/nano/UnknownFieldData;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public final clone()Lcom/google/protobuf/nano/FieldData;
    .locals 7

    .prologue
    .line 215
    new-instance v0, Lcom/google/protobuf/nano/FieldData;

    invoke-direct {v0}, Lcom/google/protobuf/nano/FieldData;-><init>()V

    .line 217
    .local v0, "clone":Lcom/google/protobuf/nano/FieldData;
    :try_start_0
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iput-object v5, v0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    .line 218
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 219
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    .line 227
    :goto_0
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-nez v5, :cond_2

    .line 258
    :cond_0
    :goto_1
    return-object v0

    .line 221
    :cond_1
    iget-object v5, v0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    iget-object v6, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v2

    .line 260
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 229
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v5, v5, Lcom/google/protobuf/nano/MessageNano;

    if-eqz v5, :cond_3

    .line 230
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v5, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v5}, Lcom/google/protobuf/nano/MessageNano;->clone()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v5

    iput-object v5, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_1

    .line 231
    :cond_3
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v5, v5, [B

    if-eqz v5, :cond_4

    .line 232
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v5, [B

    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_1

    .line 233
    :cond_4
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v5, v5, [[B

    if-eqz v5, :cond_5

    .line 234
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v4, [[B

    .line 235
    .local v4, "valueArray":[[B
    array-length v5, v4

    new-array v1, v5, [[B

    .line 236
    .local v1, "cloneArray":[[B
    iput-object v1, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 237
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 238
    aget-object v5, v4, v3

    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    aput-object v5, v1, v3

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 240
    .end local v1    # "cloneArray":[[B
    .end local v3    # "i":I
    .end local v4    # "valueArray":[[B
    :cond_5
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v5, v5, [Z

    if-eqz v5, :cond_6

    .line 241
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v5, [Z

    invoke-virtual {v5}, [Z->clone()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_1

    .line 242
    :cond_6
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v5, v5, [I

    if-eqz v5, :cond_7

    .line 243
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v5, [I

    invoke-virtual {v5}, [I->clone()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_1

    .line 244
    :cond_7
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v5, v5, [J

    if-eqz v5, :cond_8

    .line 245
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v5, [J

    invoke-virtual {v5}, [J->clone()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_1

    .line 246
    :cond_8
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v5, v5, [F

    if-eqz v5, :cond_9

    .line 247
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v5, [F

    invoke-virtual {v5}, [F->clone()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_1

    .line 248
    :cond_9
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v5, v5, [D

    if-eqz v5, :cond_a

    .line 249
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v5, [D

    invoke-virtual {v5}, [D->clone()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_1

    .line 250
    :cond_a
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v5, v5, [Lcom/google/protobuf/nano/MessageNano;

    if-eqz v5, :cond_0

    .line 251
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v4, [Lcom/google/protobuf/nano/MessageNano;

    .line 252
    .local v4, "valueArray":[Lcom/google/protobuf/nano/MessageNano;
    array-length v5, v4

    new-array v1, v5, [Lcom/google/protobuf/nano/MessageNano;

    .line 253
    .local v1, "cloneArray":[Lcom/google/protobuf/nano/MessageNano;
    iput-object v1, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 254
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 255
    aget-object v5, v4, v3

    invoke-virtual {v5}, Lcom/google/protobuf/nano/MessageNano;->clone()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v5

    aput-object v5, v1, v3
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldData;->clone()Lcom/google/protobuf/nano/FieldData;

    move-result-object v0

    return-object v0
.end method

.method computeSerializedSize()I
    .locals 4

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "size":I
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v3, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/protobuf/nano/Extension;->computeSerializedSize(Ljava/lang/Object;)I

    move-result v0

    .line 107
    :cond_0
    return v0

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 104
    .local v1, "unknownField":Lcom/google/protobuf/nano/UnknownFieldData;
    invoke-virtual {v1}, Lcom/google/protobuf/nano/UnknownFieldData;->computeSerializedSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 105
    goto :goto_0
.end method

.method computeSerializedSizeAsMessageSet()I
    .locals 4

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "size":I
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v3, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/protobuf/nano/Extension;->computeSerializedSizeAsMessageSet(Ljava/lang/Object;)I

    move-result v0

    .line 119
    :cond_0
    return v0

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 116
    .local v1, "unknownField":Lcom/google/protobuf/nano/UnknownFieldData;
    invoke-virtual {v1}, Lcom/google/protobuf/nano/UnknownFieldData;->computeSerializedSizeAsMessageSet()I

    move-result v3

    add-int/2addr v0, v3

    .line 117
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 145
    if-ne p1, p0, :cond_1

    .line 146
    const/4 v2, 0x1

    .line 186
    :cond_0
    :goto_0
    return v2

    .line 148
    :cond_1
    instance-of v3, p1, Lcom/google/protobuf/nano/FieldData;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 152
    check-cast v1, Lcom/google/protobuf/nano/FieldData;

    .line 153
    .local v1, "other":Lcom/google/protobuf/nano/FieldData;
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v3, :cond_9

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v3, :cond_9

    .line 157
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v4, v1, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    if-ne v3, v4, :cond_0

    .line 160
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v2, v2, Lcom/google/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_2

    .line 162
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 164
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_3

    .line 165
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto :goto_0

    .line 166
    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [I

    if-eqz v2, :cond_4

    .line 167
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [I

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    goto :goto_0

    .line 168
    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_5

    .line 169
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [J

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    goto :goto_0

    .line 170
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [F

    if-eqz v2, :cond_6

    .line 171
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [F

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    goto :goto_0

    .line 172
    :cond_6
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [D

    if-eqz v2, :cond_7

    .line 173
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [D

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [D

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    goto/16 :goto_0

    .line 174
    :cond_7
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [Z

    if-eqz v2, :cond_8

    .line 175
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [Z

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [Z

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    goto/16 :goto_0

    .line 177
    :cond_8
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0

    .line 180
    :cond_9
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_a

    .line 182
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0

    .line 186
    :cond_a
    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1}, Lcom/google/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto/16 :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method getUnknownField(I)Lcom/google/protobuf/nano/UnknownFieldData;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    goto :goto_0
.end method

.method getUnknownFieldSize()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method getValue(Lcom/google/protobuf/nano/Extension;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/Extension",
            "<*TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "extension":Lcom/google/protobuf/nano/Extension;, "Lcom/google/protobuf/nano/Extension<*TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/nano/Extension;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to getExtension with a different Extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    .line 86
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/Extension;->getValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 195
    const/16 v1, 0x11

    .line 198
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/lit16 v1, v2, 0x20f

    .line 203
    return v1

    .line 199
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method setValue(Lcom/google/protobuf/nano/Extension;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/Extension",
            "<*TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "extension":Lcom/google/protobuf/nano/Extension;, "Lcom/google/protobuf/nano/Extension<*TT;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    .line 94
    iput-object p2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    .line 96
    return-void
.end method

.method writeAsMessageSetTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/google/protobuf/nano/Extension;->writeAsMessageSetTo(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 141
    :cond_0
    return-void

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 138
    .local v0, "unknownField":Lcom/google/protobuf/nano/UnknownFieldData;
    invoke-virtual {v0, p1}, Lcom/google/protobuf/nano/UnknownFieldData;->writeAsMessageSetTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_0
.end method

.method writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/google/protobuf/nano/Extension;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 131
    :cond_0
    return-void

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 128
    .local v0, "unknownField":Lcom/google/protobuf/nano/UnknownFieldData;
    invoke-virtual {v0, p1}, Lcom/google/protobuf/nano/UnknownFieldData;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_0
.end method
