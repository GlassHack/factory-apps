.class public Lcom/google/android/shared/util/ProtoUtils;
.super Ljava/lang/Object;
.source "ProtoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/shared/util/ProtoUtils$ByteArrayHolder;
    }
.end annotation


# static fields
.field private static final SPLIT_STRING_LENGTH:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ProtoUtils"

.field public static final UNDEFINED_ENUM:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static append([II)[I
    .locals 2
    .param p0, "original"    # [I
    .param p1, "item"    # I
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 108
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 109
    .local v0, "newArray":[I
    array-length v1, p0

    aput p1, v0, v1

    .line 110
    return-object v0
.end method

.method public static append([JJ)[J
    .locals 2
    .param p0, "original"    # [J
    .param p1, "item"    # J
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 115
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 116
    .local v0, "newArray":[J
    array-length v1, p0

    aput-wide p1, v0, v1

    .line 117
    return-object v0
.end method

.method public static append([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 122
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/google/android/shared/util/ProtoUtils;->extend([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 123
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    aput-object p1, v0, v1

    .line 124
    return-object v0
.end method

.method public static appendAll([Ljava/lang/Object;Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Collection",
            "<TT;>;)[TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 145
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    .local p1, "newElements":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move-object v3, p0

    .line 155
    :cond_1
    return-object v3

    .line 149
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {p0, v4}, Lcom/google/android/shared/util/ProtoUtils;->extend([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 150
    .local v3, "newArray":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    .line 151
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, "element":Ljava/lang/Object;, "TT;"
    aput-object v0, v3, v1

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static varargs appendAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 160
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    .local p1, "newElements":[Ljava/lang/Object;, "[TT;"
    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_2

    :cond_0
    move-object v5, p0

    .line 170
    :cond_1
    return-object v5

    .line 164
    :cond_2
    array-length v6, p1

    invoke-static {p0, v6}, Lcom/google/android/shared/util/ProtoUtils;->extend([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .line 165
    .local v5, "newArray":[Ljava/lang/Object;, "[TT;"
    array-length v2, p0

    .line 166
    .local v2, "i":I
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 167
    .local v1, "element":Ljava/lang/Object;, "TT;"
    aput-object v1, v5, v2

    .line 168
    add-int/lit8 v2, v2, 0x1

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static copyOf(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "src":Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;, "TT;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    .local v0, "destination":Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;, "TT;"
    invoke-static {p0, v0}, Lcom/google/android/shared/util/ProtoUtils;->copyOf(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v2

    return-object v2

    .line 221
    .end local v0    # "destination":Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;, "TT;"
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 224
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static copyOf(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 2
    .param p0    # Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "src":Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;, "TT;"
    .local p1, "destination":Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;, "TT;"
    if-nez p0, :cond_0

    .line 237
    const/4 v1, 0x0

    .line 240
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    :try_end_0
    .catch Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static decodeFromString(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;Ljava/lang/String;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "encodedMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "prototype":Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;, "TT;"
    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    .line 80
    return-object p0
.end method

.method public static encodeAsString(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/shared/util/ProtoUtils;->encodeAsString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeAsString([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 66
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extend([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p1, "grow_size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 136
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 137
    array-length v0, p0

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static filter([Ljava/lang/Object;Lcom/google/common/base/Predicate;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lcom/google/common/base/Predicate",
            "<TT;>;)[TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 176
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    .local p1, "predictate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<TT;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 177
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 178
    aget-object v1, p0, v0

    .line 179
    .local v1, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public static getProtoExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 7
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p2, "protoClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 271
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 272
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    move-object v2, v3

    .line 283
    .end local v0    # "bytes":[B
    :goto_0
    return-object v2

    .line 275
    .restart local v0    # "bytes":[B
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    invoke-static {v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    goto :goto_0

    .line 276
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/InstantiationException;
    const-string v2, "ProtoUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error instantiating proto: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v1, v4, v5}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .end local v1    # "e":Ljava/lang/InstantiationException;
    :goto_1
    move-object v2, v3

    .line 283
    goto :goto_0

    .line 278
    :catch_1
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "ProtoUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error instantiating proto: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v1, v4, v5}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1

    .line 280
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 281
    .local v1, "e":Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
    const-string v2, "ProtoUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing proto extra: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v1, v4, v5}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static mergeFromBytesSafe(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 95
    .local p0, "prototype":Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;, "TT;"
    if-nez p1, :cond_0

    .line 96
    const/4 p0, 0x0

    .line 103
    .end local p0    # "prototype":Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;, "TT;"
    :goto_0
    return-object p0

    .line 99
    .restart local p0    # "prototype":Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;, "TT;"
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    :try_end_0
    .catch Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
    const-string v1, "ProtoUtils"

    const-string v2, "Error parsing proto"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static mergeFromInputStream(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;Ljava/io/InputStream;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;",
            ">(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "src":Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;, "TT;"
    invoke-static {p1}, Lcom/google/android/shared/util/IoUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method

.method public static final messageNanoEquals(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)Z
    .locals 6
    .param p0, "a"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .param p1, "b"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 196
    if-ne p0, p1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v3

    .line 199
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_4

    .line 200
    :cond_2
    if-nez p0, :cond_3

    if-eqz p1, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    .line 202
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v3, v5, :cond_5

    move v3, v4

    .line 203
    goto :goto_0

    .line 205
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 206
    .local v2, "serializedSize":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    if-eq v3, v2, :cond_6

    move v3, v4

    .line 207
    goto :goto_0

    .line 209
    :cond_6
    new-array v0, v2, [B

    .line 210
    .local v0, "aByteArray":[B
    new-array v1, v2, [B

    .line 211
    .local v1, "bByteArray":[B
    invoke-static {p0, v0, v4, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[BII)V

    .line 212
    invoke-static {p1, v1, v4, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[BII)V

    .line 213
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    goto :goto_0
.end method

.method public static messageToUrlSafeBase64(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static prepend([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p0}, Lcom/google/common/collect/ObjectArrays;->concat(Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static putProtoExtra(Landroid/content/Intent;Ljava/lang/String;Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "proto"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 255
    if-eqz p2, :cond_0

    .line 256
    invoke-static {p2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 258
    :cond_0
    return-void
.end method

.method public static toString(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    .prologue
    .line 52
    const-string v0, "*** !!! MESSAGENANO OUTPUT IS INCOMPLETE. SOME FIELDS MIGHT BE MISSING !!! ***"

    return-object v0
.end method
