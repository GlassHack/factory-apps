.class public final Lcom/google/googlenav/common/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/googlenav/common/io/b/a;Ljava/util/Set;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x2

    .line 145
    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move v0, v1

    .line 146
    :goto_0
    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 147
    invoke-virtual {p0, v4, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 148
    if-eqz v3, :cond_1

    .line 149
    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v3

    .line 150
    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 155
    :cond_0
    return v1

    .line 146
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a([BLjava/util/Set;)Z
    .locals 11

    .prologue
    const-wide/16 v6, 0x8

    const-wide/16 v9, 0x2

    const/4 v0, 0x0

    .line 84
    :try_start_0
    invoke-static {}, Lcom/google/googlenav/common/h;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 85
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 86
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 89
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 92
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 97
    :goto_1
    if-ge v1, v3, :cond_0

    .line 99
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 100
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    :cond_2
    const-wide/16 v4, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v4

    cmp-long v4, v4, v9

    if-nez v4, :cond_0

    .line 110
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 111
    int-to-long v5, v4

    invoke-virtual {v2, v5, v6}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v5

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-nez v4, :cond_0

    .line 116
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 117
    int-to-long v5, v4

    invoke-virtual {v2, v5, v6}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v5

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-nez v4, :cond_0

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 122
    :cond_3
    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    sget-object v2, Lcom/google/j/b/a/b/ad;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 123
    invoke-virtual {v1, p0}, Lcom/google/googlenav/common/io/b/a;->a([B)Lcom/google/googlenav/common/io/b/a;

    .line 124
    invoke-static {v1, p1}, Lcom/google/googlenav/common/j;->a(Lcom/google/googlenav/common/io/b/a;Ljava/util/Set;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 129
    const-string v2, "REQUEST"

    invoke-static {v2, v1}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
