.class final Lcom/google/android/maps/driveabout/store/av;
.super Lcom/google/android/maps/driveabout/store/m;
.source "SourceFile"


# instance fields
.field a:[Lcom/google/googlenav/common/io/b/a;

.field private b:Lcom/google/googlenav/common/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/common/a;)V
    .locals 1

    .prologue
    const/16 v0, 0x8

    .line 151
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/m;-><init>(I)V

    .line 152
    new-array v0, v0, [Lcom/google/googlenav/common/io/b/a;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/av;->a:[Lcom/google/googlenav/common/io/b/a;

    .line 153
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/av;->b:Lcom/google/googlenav/common/a;

    .line 154
    return-void
.end method

.method private d()Lcom/google/googlenav/common/io/b/a;
    .locals 11

    .prologue
    const/16 v10, 0x16

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x2

    .line 239
    new-instance v2, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/j/b/a/b/n;->f:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 240
    const/16 v0, 0x80

    invoke-virtual {v2, v8, v0}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 244
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/store/av;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/aw;

    .line 245
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/aw;->f()Lcom/google/android/maps/driveabout/model/u;

    move-result-object v0

    .line 246
    invoke-virtual {v2, v7}, Lcom/google/googlenav/common/io/b/a;->a(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 247
    const/16 v4, 0x15

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/u;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/u;->b()[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 249
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 250
    invoke-virtual {v3, v10}, Lcom/google/googlenav/common/io/b/a;->a(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v5

    .line 252
    aget-object v6, v4, v0

    invoke-virtual {v5, v8, v6}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    .line 253
    add-int/lit8 v6, v0, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v7, v6}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    .line 254
    invoke-virtual {v3, v10, v5}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    .line 249
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {v2, v7, v3}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    .line 259
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/av;->b()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 260
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/store/av;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v0

    .line 261
    new-instance v3, Lcom/google/googlenav/common/io/b/a;

    sget-object v4, Lcom/google/j/b/a/b/aa;->m:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v3, v4}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 263
    const/16 v4, 0x8

    invoke-virtual {v3, v8, v4}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 265
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/aw;->b()I

    move-result v4

    invoke-virtual {v3, v7, v4}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 266
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/aw;->c()I

    move-result v4

    invoke-virtual {v3, v9, v4}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 267
    const/4 v4, 0x4

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/aw;->a()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 268
    invoke-virtual {v2, v9, v3}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 270
    :cond_1
    return-object v2
.end method


# virtual methods
.method protected final a(Lcom/google/android/maps/driveabout/store/p;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/av;->b()I

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/aw;

    .line 164
    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/store/av;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/store/aw;

    .line 163
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/aw;->a(Lcom/google/android/maps/driveabout/store/aw;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final b(I)Lcom/google/android/maps/driveabout/model/av;
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 169
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/av;->a:[Lcom/google/googlenav/common/io/b/a;

    aget-object v2, v0, p1

    .line 170
    if-nez v2, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 204
    :goto_0
    return-object v0

    .line 173
    :cond_0
    new-instance v4, Lcom/google/android/maps/driveabout/model/ar;

    invoke-direct {v4}, Lcom/google/android/maps/driveabout/model/ar;-><init>()V

    .line 175
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/store/av;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/aw;

    .line 181
    invoke-virtual {v2, v8}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    .line 182
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 183
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 185
    invoke-virtual {v2, v8, v1}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v6

    invoke-static {}, Lcom/google/android/maps/driveabout/model/ar;->a()Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v7

    .line 184
    invoke-static {v6, v7, v0}, Lcom/google/android/maps/driveabout/store/au;->a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/model/aq;Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/j;

    move-result-object v6

    .line 187
    if-eqz v6, :cond_3

    .line 188
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x14

    if-ne v6, v7, :cond_3

    .line 194
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/maps/driveabout/model/j;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/maps/driveabout/model/j;

    .line 195
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/aw;->f()Lcom/google/android/maps/driveabout/model/u;

    move-result-object v5

    .line 196
    const-wide/16 v2, -0x1

    .line 197
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/model/u;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 198
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/av;->b:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/model/u;->d()J

    move-result-wide v5

    add-long/2addr v2, v5

    .line 200
    :cond_2
    new-instance v5, Lcom/google/android/maps/driveabout/model/bf;

    invoke-direct {v5}, Lcom/google/android/maps/driveabout/model/bf;-><init>()V

    .line 201
    invoke-virtual {v5, v4}, Lcom/google/android/maps/driveabout/model/bf;->a(Lcom/google/android/maps/driveabout/model/ar;)Lcom/google/android/maps/driveabout/model/bf;

    move-result-object v4

    .line 202
    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/model/bf;->a(Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/bf;

    move-result-object v0

    .line 203
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/bf;->a([Lcom/google/android/maps/driveabout/model/j;)Lcom/google/android/maps/driveabout/model/bf;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/model/bf;->a(J)Lcom/google/android/maps/driveabout/model/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/bf;->a()Lcom/google/android/maps/driveabout/model/be;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final getRequestType()I
    .locals 1

    .prologue
    .line 211
    const/16 v0, 0x24

    return v0
.end method

.method public final readResponseData(Ljava/io/DataInput;)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 224
    sget-object v0, Lcom/google/j/b/a/b/n;->h:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    .line 227
    invoke-virtual {v1, v6}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    .line 228
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/av;->b()I

    move-result v0

    if-eq v2, v0, :cond_1

    .line 235
    :cond_0
    return v5

    .line 232
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 233
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/av;->a:[Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v1, v6, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    aput-object v4, v3, v0

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeRequestData(Ljava/io/DataOutput;)V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 217
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/av;->d()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/b/a;->b(Ljava/io/OutputStream;)V

    .line 218
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 219
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 220
    return-void
.end method
