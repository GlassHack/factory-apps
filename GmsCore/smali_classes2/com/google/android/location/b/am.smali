.class public final Lcom/google/android/location/b/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/f/aj;


# instance fields
.field public final a:Lcom/google/android/location/b/an;

.field final b:Lcom/google/android/location/b/ao;

.field private final c:Lcom/google/android/location/f/aj;

.field private final d:Lcom/google/android/location/f/aj;

.field private final e:Lcom/google/android/location/b/ae;


# direct methods
.method public constructor <init>(ILcom/google/android/location/f/aj;Lcom/google/android/location/f/aj;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/location/b/am;-><init>(ILcom/google/android/location/f/aj;Lcom/google/android/location/f/aj;B)V

    .line 60
    return-void
.end method

.method private constructor <init>(ILcom/google/android/location/f/aj;Lcom/google/android/location/f/aj;B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/google/android/location/b/am;->c:Lcom/google/android/location/f/aj;

    .line 66
    iput-object p3, p0, Lcom/google/android/location/b/am;->d:Lcom/google/android/location/f/aj;

    .line 67
    new-instance v0, Lcom/google/android/location/b/ae;

    invoke-direct {v0}, Lcom/google/android/location/b/ae;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/b/am;->e:Lcom/google/android/location/b/ae;

    .line 68
    iput-object v2, p0, Lcom/google/android/location/b/am;->b:Lcom/google/android/location/b/ao;

    .line 69
    new-instance v0, Lcom/google/android/location/b/an;

    iget-object v1, p0, Lcom/google/android/location/b/am;->e:Lcom/google/android/location/b/ae;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/location/b/an;-><init>(ILcom/google/android/location/b/ae;Lcom/google/android/location/b/ao;)V

    iput-object v0, p0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    .line 72
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/location/b/a;
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v0, p1}, Lcom/google/android/location/b/an;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/b/a;

    .line 189
    iget-object v2, p0, Lcom/google/android/location/b/am;->e:Lcom/google/android/location/b/ae;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/google/android/location/b/ae;->a(Z)V

    .line 190
    return-object v0

    .line 189
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;J)Lcom/google/android/location/b/a;
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v0, p1}, Lcom/google/android/location/b/an;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/b/a;

    .line 172
    if-eqz v0, :cond_0

    .line 173
    iput-wide p2, v0, Lcom/google/android/location/b/a;->b:J

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/b/am;->e:Lcom/google/android/location/b/ae;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/google/android/location/b/ae;->a(Z)V

    .line 176
    return-object v0

    .line 175
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a()Lcom/google/g/a/b/b/a;
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/location/b/am;->e:Lcom/google/android/location/b/ae;

    iget-object v1, p0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    iget v1, v1, Lcom/google/android/location/b/an;->a:I

    iget-object v2, p0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v2}, Lcom/google/android/location/b/an;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/b/ae;->a(II)Lcom/google/g/a/b/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/location/b/am;->b(Ljava/io/DataInput;)Lcom/google/android/location/b/am;

    move-result-object v0

    return-object v0
.end method

.method public final a(JJ)V
    .locals 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 102
    iget-object v0, p0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v0}, Lcom/google/android/location/b/an;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 103
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/b/a;

    .line 106
    iget-wide v4, v1, Lcom/google/android/location/b/a;->b:J

    cmp-long v3, v4, p3

    if-gez v3, :cond_2

    .line 107
    iget-object v3, p0, Lcom/google/android/location/b/am;->e:Lcom/google/android/location/b/ae;

    invoke-virtual {v3, v9}, Lcom/google/android/location/b/ae;->a(I)V

    .line 108
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_1

    const-string v3, "TemporalCache"

    const-string v4, "Discarding %s because never seen recently."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 110
    iget-object v3, p0, Lcom/google/android/location/b/am;->b:Lcom/google/android/location/b/ao;

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/google/android/location/b/am;->b:Lcom/google/android/location/b/ao;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    iget-object v0, v1, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    goto :goto_0

    .line 113
    :cond_2
    iget-wide v4, v1, Lcom/google/android/location/b/a;->a:J

    cmp-long v3, v4, p1

    if-gez v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/google/android/location/b/am;->e:Lcom/google/android/location/b/ae;

    invoke-virtual {v3, v9}, Lcom/google/android/location/b/ae;->a(I)V

    .line 117
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_3

    const-string v3, "TemporalCache"

    const-string v4, "Discarding %s because result too old."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 119
    iget-object v3, p0, Lcom/google/android/location/b/am;->b:Lcom/google/android/location/b/ao;

    if-eqz v3, :cond_0

    .line 120
    iget-object v3, p0, Lcom/google/android/location/b/am;->b:Lcom/google/android/location/b/ao;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    iget-object v0, v1, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    goto :goto_0

    .line 124
    :cond_4
    return-void
.end method

.method public final a(Lcom/google/android/location/b/am;Ljava/io/DataOutput;)V
    .locals 4

    .prologue
    .line 265
    iget-object v0, p1, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v0}, Lcom/google/android/location/b/an;->size()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 266
    iget-object v0, p1, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v0}, Lcom/google/android/location/b/an;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 267
    iget-object v2, p0, Lcom/google/android/location/b/am;->c:Lcom/google/android/location/f/aj;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/google/android/location/f/aj;->a(Ljava/lang/Object;Ljava/io/DataOutput;)V

    .line 268
    iget-object v2, p0, Lcom/google/android/location/b/am;->d:Lcom/google/android/location/f/aj;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0, p2}, Lcom/google/android/location/f/aj;->a(Ljava/lang/Object;Ljava/io/DataOutput;)V

    goto :goto_0

    .line 270
    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/google/android/location/b/am;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/b/am;->a(Lcom/google/android/location/b/am;Ljava/io/DataOutput;)V

    return-void
.end method

.method public final a(ZLjava/lang/Object;ILjava/lang/Object;J)V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v0, p2}, Lcom/google/android/location/b/an;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/b/a;

    .line 149
    if-nez v0, :cond_1

    .line 150
    if-eqz p1, :cond_0

    .line 151
    new-instance v0, Lcom/google/android/location/b/a;

    invoke-direct {v0, p3, p4, p5, p6}, Lcom/google/android/location/b/a;-><init>(ILjava/lang/Object;J)V

    .line 152
    iget-object v1, p0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v1, p2, v0}, Lcom/google/android/location/b/an;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/google/android/location/b/am;->e:Lcom/google/android/location/b/ae;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/location/b/ae;->a(I)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position may not be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-wide p5, v0, Lcom/google/android/location/b/a;->a:J

    iput-object p4, v0, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    iput p3, v0, Lcom/google/android/location/b/a;->c:I

    goto :goto_0
.end method

.method public final b(Ljava/io/DataInput;)Lcom/google/android/location/b/am;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 248
    :try_start_0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 249
    iget-object v1, p0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v1}, Lcom/google/android/location/b/an;->clear()V

    move v1, v0

    .line 250
    :goto_0
    if-ge v1, v2, :cond_1

    .line 251
    iget-object v0, p0, Lcom/google/android/location/b/am;->c:Lcom/google/android/location/f/aj;

    invoke-interface {v0, p1}, Lcom/google/android/location/f/aj;->a(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v3

    .line 252
    iget-object v0, p0, Lcom/google/android/location/b/am;->d:Lcom/google/android/location/f/aj;

    invoke-interface {v0, p1}, Lcom/google/android/location/f/aj;->a(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/b/a;

    .line 253
    iget-object v4, p0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v4, v3, v0}, Lcom/google/android/location/b/an;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_0

    const-string v4, "TemporalCache"

    const-string v5, "Loaded entry, key=[%s], value=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v0, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    iget-object v1, p0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v1}, Lcom/google/android/location/b/an;->clear()V

    .line 259
    throw v0

    .line 256
    :cond_1
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v0}, Lcom/google/android/location/b/an;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
