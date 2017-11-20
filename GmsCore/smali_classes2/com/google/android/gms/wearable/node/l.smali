.class public final Lcom/google/android/gms/wearable/node/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/wearable/node/k;)Lcom/google/android/gms/wearable/c/r;
    .locals 8

    .prologue
    .line 24
    new-instance v2, Lcom/google/android/gms/wearable/c/r;

    invoke-direct {v2}, Lcom/google/android/gms/wearable/c/r;-><init>()V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/wearable/c/r;->a:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/a;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/wearable/c/r;->b:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/i;->c()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/wearable/c/r;->c:Ljava/lang/String;

    .line 28
    iget-wide v0, p0, Lcom/google/android/gms/wearable/node/k;->f:J

    iput-wide v0, v2, Lcom/google/android/gms/wearable/c/r;->e:J

    .line 29
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/node/k;->c:Z

    iput-boolean v0, v2, Lcom/google/android/gms/wearable/c/r;->f:Z

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/k;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/k;->e:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/wearable/c/r;->g:Ljava/lang/String;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/i;->d()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/i;->d()[B

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/wearable/c/r;->d:[B

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/i;->e()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v4, v0, [Lcom/google/android/gms/wearable/c/d;

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v6, Lcom/google/android/gms/wearable/c/d;

    invoke-direct {v6}, Lcom/google/android/gms/wearable/c/d;-><init>()V

    const/4 v7, 0x4

    iput v7, v6, Lcom/google/android/gms/wearable/c/d;->c:I

    iput-object v0, v6, Lcom/google/android/gms/wearable/c/d;->a:Ljava/lang/String;

    new-instance v7, Lcom/google/android/gms/wearable/c/e;

    invoke-direct {v7}, Lcom/google/android/gms/wearable/c/e;-><init>()V

    iput-object v7, v6, Lcom/google/android/gms/wearable/c/d;->b:Lcom/google/android/gms/wearable/c/e;

    iget-object v7, v6, Lcom/google/android/gms/wearable/c/d;->b:Lcom/google/android/gms/wearable/c/e;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/c;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/c;->b:Ljava/lang/String;

    iput-object v0, v7, Lcom/google/android/gms/wearable/c/e;->d:Ljava/lang/String;

    aput-object v6, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iput-object v4, v2, Lcom/google/android/gms/wearable/c/r;->h:[Lcom/google/android/gms/wearable/c/d;

    .line 38
    return-object v2
.end method

.method public static a(Landroid/database/Cursor;)Lcom/google/android/gms/wearable/node/k;
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    new-instance v3, Lcom/google/android/gms/wearable/node/k;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/gms/wearable/node/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wearable/node/a;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/gms/wearable/node/k;-><init>(Lcom/google/android/gms/wearable/node/a;)V

    .line 149
    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/google/android/gms/wearable/node/k;->c:Z

    .line 150
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, v3, Lcom/google/android/gms/wearable/node/k;->f:J

    .line 151
    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/wearable/node/k;->e:Ljava/lang/String;

    .line 154
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    :goto_1
    iput-boolean v1, v3, Lcom/google/android/gms/wearable/node/k;->d:Z

    .line 156
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 158
    new-instance v4, Lcom/google/android/gms/wearable/node/i;

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/wearable/node/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v3, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    .line 159
    iget-boolean v0, v3, Lcom/google/android/gms/wearable/node/k;->c:Z

    if-nez v0, :cond_0

    .line 160
    iget-object v0, v3, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    const/16 v1, 0x8

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/node/i;->a([B)Lcom/google/android/gms/wearable/node/i;

    .line 167
    :cond_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_4

    .line 170
    :goto_2
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 171
    const/16 v4, 0xc

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 172
    iget-boolean v5, v3, Lcom/google/android/gms/wearable/node/k;->c:Z

    if-nez v5, :cond_1

    .line 173
    iget-object v5, v3, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-static {v4}, Lcom/google/android/gms/wearable/node/c;->a(Ljava/lang/String;)Lcom/google/android/gms/wearable/node/c;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Lcom/google/android/gms/wearable/node/i;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/node/c;)Lcom/google/android/gms/wearable/node/i;

    .line 176
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move v0, v2

    .line 149
    goto :goto_0

    :cond_3
    move v1, v2

    .line 154
    goto :goto_1

    .line 183
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 186
    :cond_5
    return-object v3
.end method

.method public static a(Lcom/google/android/gms/wearable/c/r;Ljava/lang/String;)Lcom/google/android/gms/wearable/node/k;
    .locals 7

    .prologue
    .line 70
    new-instance v1, Lcom/google/android/gms/wearable/node/k;

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/wearable/node/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wearable/node/a;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/wearable/node/k;-><init>(Lcom/google/android/gms/wearable/node/a;)V

    .line 72
    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/r;->e:J

    iput-wide v2, v1, Lcom/google/android/gms/wearable/node/k;->f:J

    .line 73
    iput-object p1, v1, Lcom/google/android/gms/wearable/node/k;->e:Ljava/lang/String;

    .line 74
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/c/r;->f:Z

    iput-boolean v0, v1, Lcom/google/android/gms/wearable/node/k;->c:Z

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 76
    new-instance v2, Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/wearable/node/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    .line 77
    iget-object v0, v1, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->d:[B

    invoke-virtual {v0, v2}, Lcom/google/android/gms/wearable/node/i;->a([B)Lcom/google/android/gms/wearable/node/i;

    .line 78
    iget-object v2, v1, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    iget-object v3, p0, Lcom/google/android/gms/wearable/c/r;->h:[Lcom/google/android/gms/wearable/c/d;

    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    iget-object v6, v5, Lcom/google/android/gms/wearable/c/d;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/wearable/c/d;->b:Lcom/google/android/gms/wearable/c/e;

    iget-object v5, v5, Lcom/google/android/gms/wearable/c/e;->d:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/wearable/node/c;->a(Ljava/lang/String;)Lcom/google/android/gms/wearable/node/c;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/wearable/node/i;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/node/c;)Lcom/google/android/gms/wearable/node/i;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-object v1
.end method

.method public static a(Lcom/google/android/gms/wearable/PutDataRequest;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 128
    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/PutDataRequest;->b()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/PutDataRequest;->b()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x0

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/PutDataRequest;->c()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    .line 138
    goto :goto_1

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/PutDataRequest;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    .line 142
    sget-object v0, Lcom/google/android/gms/wearable/a/b;->c:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static b(Lcom/google/android/gms/wearable/node/k;)Lcom/google/android/gms/wearable/internal/DataItemParcelable;
    .locals 6

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/i;->c()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/DataItemParcelable;->a(Landroid/net/Uri;)Lcom/google/android/gms/wearable/internal/DataItemParcelable;

    move-result-object v2

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/i;->d()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/wearable/internal/DataItemParcelable;->a([B)Lcom/google/android/gms/wearable/internal/DataItemParcelable;

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/i;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    invoke-virtual {v2}, Lcom/google/android/gms/wearable/internal/DataItemParcelable;->d()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/wearable/internal/p;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/c;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/c;->b:Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Lcom/google/android/gms/wearable/internal/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    :cond_0
    return-object v2
.end method

.method static c(Lcom/google/android/gms/wearable/node/k;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 190
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 191
    const-string v3, "timestampMs"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    const-string v3, "seqId"

    iget-wide v4, p0, Lcom/google/android/gms/wearable/node/k;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    const-string v3, "sourceNode"

    iget-object v4, p0, Lcom/google/android/gms/wearable/node/k;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-boolean v3, p0, Lcom/google/android/gms/wearable/node/k;->c:Z

    if-nez v3, :cond_0

    .line 195
    const-string v3, "deleted"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    const-string v3, "data"

    iget-object v4, p0, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v4}, Lcom/google/android/gms/wearable/node/i;->d()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 201
    :goto_0
    const-string v3, "assetsPresent"

    iget-boolean v4, p0, Lcom/google/android/gms/wearable/node/k;->d:Z

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    return-object v2

    .line 198
    :cond_0
    const-string v3, "deleted"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 201
    goto :goto_1
.end method
