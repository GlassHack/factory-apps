.class public Lcom/google/android/gms/fitness/b/b/x;
.super Lcom/google/android/gms/fitness/b/b/d;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/NavigableMap;

.field private transient b:Ljava/util/Set;

.field private transient c:Lcom/google/android/gms/fitness/b/b/w;


# direct methods
.method private constructor <init>(Ljava/util/NavigableMap;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/gms/fitness/b/b/d;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/b/x;->a:Ljava/util/NavigableMap;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/NavigableMap;B)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/b/b/x;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method

.method static a(Z)Lcom/google/c/c/aj;
    .locals 1

    .prologue
    .line 849
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/c/c/aj;->b:Lcom/google/c/c/aj;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/c/c/aj;->a:Lcom/google/c/c/aj;

    goto :goto_0
.end method

.method static a(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 860
    if-ne p0, p1, :cond_1

    .line 874
    :cond_0
    :goto_0
    return v0

    .line 863
    :cond_1
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_3

    .line 864
    check-cast p1, Ljava/util/Set;

    .line 867
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 869
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 871
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 874
    goto :goto_0
.end method

.method public static c()Lcom/google/android/gms/fitness/b/b/x;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/google/android/gms/fitness/b/b/x;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/b/b/x;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method private e(Lcom/google/android/gms/fitness/b/b/u;)V
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/b/b/u;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/x;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/x;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-interface {v0, v1, p1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/x;->b:Ljava/util/Set;

    .line 74
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/fitness/b/b/y;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/b/b/y;-><init>(Lcom/google/android/gms/fitness/b/b/x;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/b/x;->b:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public a(Lcom/google/android/gms/fitness/b/b/u;)V
    .locals 4

    .prologue
    .line 133
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/b/b/u;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v2, p1, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    .line 142
    iget-object v1, p1, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/x;->a:Ljava/util/NavigableMap;

    invoke-interface {v0, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_2

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    .line 148
    iget-object v3, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/fitness/b/b/e;->a(Lcom/google/android/gms/fitness/b/b/e;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 150
    iget-object v2, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/fitness/b/b/e;->a(Lcom/google/android/gms/fitness/b/b/e;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 152
    iget-object v1, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    .line 158
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    move-object v2, v0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/x;->a:Ljava/util/NavigableMap;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_3

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    .line 166
    iget-object v3, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/fitness/b/b/e;->a(Lcom/google/android/gms/fitness/b/b/e;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 168
    iget-object v1, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/x;->a:Ljava/util/NavigableMap;

    invoke-interface {v0, v2, v1}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 175
    invoke-static {v2, v1}, Lcom/google/android/gms/fitness/b/b/u;->a(Lcom/google/android/gms/fitness/b/b/e;Lcom/google/android/gms/fitness/b/b/e;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/b/x;->e(Lcom/google/android/gms/fitness/b/b/u;)V

    goto :goto_0
.end method

.method public b()Lcom/google/android/gms/fitness/b/b/w;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/x;->c:Lcom/google/android/gms/fitness/b/b/w;

    .line 234
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/fitness/b/b/z;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/b/b/z;-><init>(Lcom/google/android/gms/fitness/b/b/x;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/b/x;->c:Lcom/google/android/gms/fitness/b/b/w;

    :cond_0
    return-object v0
.end method

.method public b(Lcom/google/android/gms/fitness/b/b/u;)V
    .locals 3

    .prologue
    .line 180
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/b/b/u;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/x;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_2

    .line 192
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    .line 193
    iget-object v1, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v2, p1, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/b/b/e;->a(Lcom/google/android/gms/fitness/b/b/e;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 195
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/b/b/u;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v2, p1, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/b/b/e;->a(Lcom/google/android/gms/fitness/b/b/e;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 198
    iget-object v1, p1, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v2, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/b/b/u;->a(Lcom/google/android/gms/fitness/b/b/e;Lcom/google/android/gms/fitness/b/b/e;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/fitness/b/b/x;->e(Lcom/google/android/gms/fitness/b/b/u;)V

    .line 201
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v1, p1, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/b/b/u;->a(Lcom/google/android/gms/fitness/b/b/e;Lcom/google/android/gms/fitness/b/b/e;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/b/x;->e(Lcom/google/android/gms/fitness/b/b/u;)V

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/x;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_3

    .line 209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    .line 210
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/b/b/u;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v2, p1, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/b/b/e;->a(Lcom/google/android/gms/fitness/b/b/e;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 213
    iget-object v1, p1, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/b/b/u;->a(Lcom/google/android/gms/fitness/b/b/e;Lcom/google/android/gms/fitness/b/b/e;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/b/x;->e(Lcom/google/android/gms/fitness/b/b/u;)V

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/x;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v2, p1, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    goto :goto_0
.end method

.method public c(Lcom/google/android/gms/fitness/b/b/u;)Z
    .locals 2

    .prologue
    .line 108
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/x;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/b/b/u;->a(Lcom/google/android/gms/fitness/b/b/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lcom/google/android/gms/fitness/b/b/u;)Lcom/google/android/gms/fitness/b/b/w;
    .locals 1

    .prologue
    .line 779
    invoke-static {}, Lcom/google/android/gms/fitness/b/b/u;->a()Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/fitness/b/b/ag;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/fitness/b/b/ag;-><init>(Lcom/google/android/gms/fitness/b/b/x;Lcom/google/android/gms/fitness/b/b/u;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/google/android/gms/fitness/b/b/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
