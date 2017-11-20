.class public final Lcom/google/android/location/p/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(II)F
    .locals 2

    .prologue
    .line 80
    if-lez p0, :cond_0

    .line 81
    int-to-float v0, p1

    int-to-float v1, p0

    div-float/2addr v0, v1

    .line 83
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public static a(IIII)J
    .locals 6

    .prologue
    .line 140
    int-to-long v0, p0

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    int-to-long v2, p3

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(J)J
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 157
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 158
    invoke-static {v0}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/util/Calendar;)J
    .locals 4

    .prologue
    .line 148
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xe

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/location/p/h;->a(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/io/InputStream;Lcom/google/g/a/b/b/c;)Lcom/google/g/a/b/b/a;
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/google/g/a/b/b/a;

    invoke-direct {v0, p1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 235
    invoke-static {p0, v0}, Lcom/google/android/location/p/h;->a(Ljava/io/InputStream;Lcom/google/g/a/b/b/a;)V

    .line 236
    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 331
    if-nez p0, :cond_0

    .line 332
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    return-object p0
.end method

.method public static a(Lcom/google/g/a/b/b/a;I)V
    .locals 1

    .prologue
    .line 67
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/g/a/b/b/a;->j(I)V

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 191
    if-eqz p0, :cond_0

    .line 193
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Lcom/google/g/a/b/b/a;)V
    .locals 2

    .prologue
    .line 246
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/g/a/b/b/a;->a(Ljava/io/InputStream;)Lcom/google/g/a/b/b/a;

    .line 250
    invoke-virtual {p1}, Lcom/google/g/a/b/b/a;->f()[B

    .line 253
    invoke-virtual {p1}, Lcom/google/g/a/b/b/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing required field or has more than one value for no repeated field."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    :catch_0
    move-exception v0

    throw v0

    .line 262
    :catch_1
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Runtime exception while parsing."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    return-void
.end method

.method public static a(Ljava/util/Calendar;J)V
    .locals 11

    .prologue
    const-wide/32 v4, 0x36ee80

    const-wide/32 v8, 0xea60

    const-wide/16 v6, 0x3e8

    .line 165
    const/16 v0, 0xb

    div-long v2, p1, v4

    long-to-int v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 166
    rem-long v0, p1, v4

    .line 167
    const/16 v2, 0xc

    div-long v4, v0, v8

    long-to-int v3, v4

    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 168
    rem-long/2addr v0, v8

    .line 169
    const/16 v2, 0xd

    div-long v4, v0, v6

    long-to-int v3, v4

    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 170
    rem-long/2addr v0, v6

    .line 171
    const/16 v2, 0xe

    long-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 172
    return-void
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 284
    if-nez p0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 287
    :cond_0
    return-void
.end method

.method public static a(Lcom/google/g/a/b/b/a;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 39
    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 99
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    move v0, v1

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    .line 100
    if-eqz v0, :cond_2

    invoke-static {v6}, Lcom/google/android/location/p/h;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 99
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 100
    goto :goto_2

    .line 104
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    move v1, v2

    .line 105
    goto :goto_0
.end method

.method public static a(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 131
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([BII)[B
    .locals 3

    .prologue
    .line 204
    if-le p1, p2, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 207
    :cond_0
    array-length v0, p0

    .line 208
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    .line 209
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 211
    :cond_2
    sub-int v1, p2, p1

    .line 212
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 213
    new-array v1, v1, [B

    .line 214
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    return-object v1
.end method

.method public static b(J)Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/32 v2, 0x36ee80

    const-wide/32 v6, 0xea60

    const-wide/16 v8, 0x3e8

    .line 178
    div-long v0, p0, v2

    .line 179
    rem-long v2, p0, v2

    .line 180
    div-long v4, v2, v6

    .line 181
    rem-long/2addr v2, v6

    .line 182
    div-long v6, v2, v8

    .line 183
    rem-long/2addr v2, v8

    .line 184
    const-string v8, "%02d:%02d:%02d.%03d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/g/a/b/b/a;I)Ljava/util/List;
    .locals 4

    .prologue
    .line 116
    if-nez p0, :cond_1

    .line 117
    const/4 v0, 0x0

    .line 124
    :cond_0
    return-object v0

    .line 119
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v2

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 122
    invoke-virtual {p0, p1, v1}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static b(Z)V
    .locals 1

    .prologue
    .line 345
    if-nez p0, :cond_0

    .line 346
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 348
    :cond_0
    return-void
.end method

.method public static b(Lcom/google/g/a/b/b/a;)Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 48
    invoke-static {p0}, Lcom/google/android/location/p/h;->a(Lcom/google/g/a/b/b/a;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {p0, v3, v0}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v2

    .line 57
    invoke-virtual {v2, v1}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 60
    goto :goto_0
.end method
