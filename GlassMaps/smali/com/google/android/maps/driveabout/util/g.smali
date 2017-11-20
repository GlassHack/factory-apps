.class public Lcom/google/android/maps/driveabout/util/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final _debug:Z


# instance fields
.field private final mMap:Ljava/util/Map;

.field protected final mMaxEntries:I

.field private mOldest:Lcom/google/android/maps/driveabout/util/j;

.field private mYoungest:Lcom/google/android/maps/driveabout/util/j;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mMap:Ljava/util/Map;

    .line 23
    iput p1, p0, Lcom/google/android/maps/driveabout/util/g;->mMaxEntries:I

    .line 24
    return-void
.end method

.method private link(Lcom/google/android/maps/driveabout/util/j;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mYoungest:Lcom/google/android/maps/driveabout/util/j;

    if-nez v0, :cond_0

    .line 194
    iput-object p1, p0, Lcom/google/android/maps/driveabout/util/g;->mOldest:Lcom/google/android/maps/driveabout/util/j;

    .line 195
    iput-object p1, p0, Lcom/google/android/maps/driveabout/util/g;->mYoungest:Lcom/google/android/maps/driveabout/util/j;

    .line 202
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mYoungest:Lcom/google/android/maps/driveabout/util/j;

    .line 198
    iput-object v0, p1, Lcom/google/android/maps/driveabout/util/j;->a:Lcom/google/android/maps/driveabout/util/j;

    .line 199
    iput-object p1, v0, Lcom/google/android/maps/driveabout/util/j;->b:Lcom/google/android/maps/driveabout/util/j;

    .line 200
    iput-object p1, p0, Lcom/google/android/maps/driveabout/util/g;->mYoungest:Lcom/google/android/maps/driveabout/util/j;

    goto :goto_0
.end method

.method private remove(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/util/j;

    .line 150
    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    .line 153
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/util/g;->unlink(Lcom/google/android/maps/driveabout/util/j;)V

    .line 154
    if-eqz p2, :cond_1

    .line 156
    iget-object v1, v0, Lcom/google/android/maps/driveabout/util/j;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/maps/driveabout/util/g;->onEject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    :cond_1
    iget-object v0, v0, Lcom/google/android/maps/driveabout/util/j;->d:Ljava/lang/Object;

    goto :goto_0
.end method

.method private unlink(Lcom/google/android/maps/driveabout/util/j;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v0, p1, Lcom/google/android/maps/driveabout/util/j;->a:Lcom/google/android/maps/driveabout/util/j;

    .line 206
    iget-object v1, p1, Lcom/google/android/maps/driveabout/util/j;->b:Lcom/google/android/maps/driveabout/util/j;

    .line 207
    if-eqz v0, :cond_0

    .line 208
    iput-object v1, v0, Lcom/google/android/maps/driveabout/util/j;->b:Lcom/google/android/maps/driveabout/util/j;

    .line 210
    :cond_0
    if-eqz v1, :cond_1

    .line 211
    iput-object v0, v1, Lcom/google/android/maps/driveabout/util/j;->a:Lcom/google/android/maps/driveabout/util/j;

    .line 214
    :cond_1
    iput-object v2, p1, Lcom/google/android/maps/driveabout/util/j;->a:Lcom/google/android/maps/driveabout/util/j;

    .line 215
    iput-object v2, p1, Lcom/google/android/maps/driveabout/util/j;->b:Lcom/google/android/maps/driveabout/util/j;

    .line 217
    iget-object v2, p0, Lcom/google/android/maps/driveabout/util/g;->mOldest:Lcom/google/android/maps/driveabout/util/j;

    if-ne v2, p1, :cond_2

    .line 218
    iput-object v1, p0, Lcom/google/android/maps/driveabout/util/g;->mOldest:Lcom/google/android/maps/driveabout/util/j;

    .line 221
    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/util/g;->mYoungest:Lcom/google/android/maps/driveabout/util/j;

    if-ne v1, p1, :cond_3

    .line 222
    iput-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mYoungest:Lcom/google/android/maps/driveabout/util/j;

    .line 224
    :cond_3
    return-void
.end method

.method private validate()V
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/util/g;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "LRUCache: invalid internal data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/util/g;->trimTo(I)V

    .line 32
    return-void
.end method

.method public entryIterator()Lcom/google/android/maps/driveabout/util/h;
    .locals 2

    .prologue
    .line 280
    new-instance v0, Lcom/google/android/maps/driveabout/util/h;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/util/g;->mOldest:Lcom/google/android/maps/driveabout/util/j;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/util/h;-><init>(Lcom/google/android/maps/driveabout/util/j;)V

    return-object v0
.end method

.method public find(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/util/j;

    .line 96
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/maps/driveabout/util/j;->d:Ljava/lang/Object;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/util/j;

    .line 104
    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 109
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/util/g;->unlink(Lcom/google/android/maps/driveabout/util/j;)V

    .line 110
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/util/g;->link(Lcom/google/android/maps/driveabout/util/j;)V

    .line 113
    iget-object v0, v0, Lcom/google/android/maps/driveabout/util/j;->d:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final insert(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/util/j;

    .line 69
    if-nez v0, :cond_0

    .line 70
    iget v1, p0, Lcom/google/android/maps/driveabout/util/g;->mMaxEntries:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/util/g;->trimTo(I)V

    .line 75
    :cond_0
    new-instance v1, Lcom/google/android/maps/driveabout/util/j;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/util/j;-><init>()V

    .line 76
    iput-object p2, v1, Lcom/google/android/maps/driveabout/util/j;->d:Ljava/lang/Object;

    .line 77
    iput-object p1, v1, Lcom/google/android/maps/driveabout/util/j;->c:Ljava/lang/Object;

    .line 79
    if-eqz v0, :cond_1

    .line 80
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/util/g;->unlink(Lcom/google/android/maps/driveabout/util/j;)V

    .line 83
    iget-object v2, v0, Lcom/google/android/maps/driveabout/util/j;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lcom/google/android/maps/driveabout/util/g;->onEject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    iget-object v0, v0, Lcom/google/android/maps/driveabout/util/j;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/util/g;->onSuperseded(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mMap:Ljava/util/Map;

    iget-object v2, v1, Lcom/google/android/maps/driveabout/util/j;->c:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/util/g;->link(Lcom/google/android/maps/driveabout/util/j;)V

    .line 91
    return-void
.end method

.method isValid()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    .line 239
    iget v0, p0, Lcom/google/android/maps/driveabout/util/g;->mMaxEntries:I

    if-le v6, v0, :cond_0

    move v0, v1

    .line 272
    :goto_0
    return v0

    .line 242
    :cond_0
    if-nez v6, :cond_2

    .line 243
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mOldest:Lcom/google/android/maps/driveabout/util/j;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mYoungest:Lcom/google/android/maps/driveabout/util/j;

    if-eqz v0, :cond_b

    :cond_1
    move v0, v1

    .line 244
    goto :goto_0

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mOldest:Lcom/google/android/maps/driveabout/util/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mYoungest:Lcom/google/android/maps/driveabout/util/j;

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    .line 247
    goto :goto_0

    .line 248
    :cond_4
    if-ne v6, v2, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mOldest:Lcom/google/android/maps/driveabout/util/j;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/util/g;->mYoungest:Lcom/google/android/maps/driveabout/util/j;

    if-eq v0, v3, :cond_5

    move v0, v1

    .line 249
    goto :goto_0

    .line 251
    :cond_5
    const/4 v4, 0x0

    .line 252
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mOldest:Lcom/google/android/maps/driveabout/util/j;

    move v3, v1

    move-object v7, v0

    move-object v0, v4

    move-object v4, v7

    .line 253
    :goto_1
    if-ge v3, v6, :cond_9

    .line 254
    if-eqz v0, :cond_7

    .line 255
    iget-object v5, v0, Lcom/google/android/maps/driveabout/util/j;->b:Lcom/google/android/maps/driveabout/util/j;

    if-eq v5, v4, :cond_6

    move v0, v1

    .line 256
    goto :goto_0

    .line 257
    :cond_6
    iget-object v5, v4, Lcom/google/android/maps/driveabout/util/j;->a:Lcom/google/android/maps/driveabout/util/j;

    if-eq v5, v0, :cond_7

    move v0, v1

    .line 258
    goto :goto_0

    .line 261
    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mMap:Ljava/util/Map;

    iget-object v5, v4, Lcom/google/android/maps/driveabout/util/j;->c:Ljava/lang/Object;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/util/j;

    .line 262
    if-eq v0, v4, :cond_8

    move v0, v1

    .line 263
    goto :goto_0

    .line 265
    :cond_8
    iget-object v5, v4, Lcom/google/android/maps/driveabout/util/j;->b:Lcom/google/android/maps/driveabout/util/j;

    .line 253
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v0, v4

    move-object v4, v5

    goto :goto_1

    .line 267
    :cond_9
    if-eqz v4, :cond_a

    move v0, v1

    .line 268
    goto :goto_0

    .line 269
    :cond_a
    iget-object v3, p0, Lcom/google/android/maps/driveabout/util/g;->mYoungest:Lcom/google/android/maps/driveabout/util/j;

    if-eq v0, v3, :cond_b

    move v0, v1

    .line 270
    goto :goto_0

    :cond_b
    move v0, v2

    .line 272
    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected onEject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method protected onSuperseded(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/util/g;->remove(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeOldest()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mOldest:Lcom/google/android/maps/driveabout/util/j;

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mOldest:Lcom/google/android/maps/driveabout/util/j;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/util/j;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/util/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public removeWithoutEjecting(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/util/g;->remove(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeYoungest()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mYoungest:Lcom/google/android/maps/driveabout/util/j;

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mYoungest:Lcom/google/android/maps/driveabout/util/j;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/util/j;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/util/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public trimTo(I)V
    .locals 2

    .prologue
    .line 184
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mOldest:Lcom/google/android/maps/driveabout/util/j;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/util/j;->c:Ljava/lang/Object;

    .line 186
    iget-object v1, p0, Lcom/google/android/maps/driveabout/util/g;->mOldest:Lcom/google/android/maps/driveabout/util/j;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/util/j;->c:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/util/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 188
    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/util/g;->onSuperseded(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method public final values()Ljava/util/Collection;
    .locals 3

    .prologue
    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/util/g;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/g;->mOldest:Lcom/google/android/maps/driveabout/util/j;

    :goto_0
    if-eqz v0, :cond_0

    .line 177
    iget-object v2, v0, Lcom/google/android/maps/driveabout/util/j;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, v0, Lcom/google/android/maps/driveabout/util/j;->b:Lcom/google/android/maps/driveabout/util/j;

    goto :goto_0

    .line 179
    :cond_0
    return-object v1
.end method
