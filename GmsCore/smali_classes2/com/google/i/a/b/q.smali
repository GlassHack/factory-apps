.class public final Lcom/google/i/a/b/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/location/b/am;

.field public final b:Lcom/google/g/a/b/b/c;

.field private final c:Lcom/google/i/a/b/r;

.field private final d:Lcom/google/g/a/b/b/a;


# direct methods
.method public constructor <init>(Lcom/google/i/a/b/r;Lcom/google/g/a/b/b/c;I)V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/i/a/b/q;->c:Lcom/google/i/a/b/r;

    .line 40
    iput-object p2, p0, Lcom/google/i/a/b/q;->b:Lcom/google/g/a/b/b/c;

    .line 42
    new-instance v0, Lcom/google/android/location/b/am;

    sget-object v1, Lcom/google/i/a/b/o;->c:Lcom/google/android/location/f/aj;

    invoke-static {p2}, Lcom/google/i/a/b/u;->a(Lcom/google/g/a/b/b/c;)Lcom/google/android/location/f/aj;

    move-result-object v2

    invoke-direct {v0, p3, v1, v2}, Lcom/google/android/location/b/am;-><init>(ILcom/google/android/location/f/aj;Lcom/google/android/location/f/aj;)V

    iput-object v0, p0, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    .line 44
    new-instance v0, Lcom/google/g/a/b/b/a;

    invoke-direct {v0, p2}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    iput-object v0, p0, Lcom/google/i/a/b/q;->d:Lcom/google/g/a/b/b/a;

    .line 45
    return-void
.end method

.method public static final a(Lcom/google/i/a/b/o;I)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/google/i/a/b/o;->b:I

    rem-int/2addr v0, p1

    add-int/2addr v0, p1

    rem-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/i/a/b/o;)Lcom/google/g/a/b/b/a;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    invoke-virtual {v0, p1}, Lcom/google/android/location/b/am;->a(Ljava/lang/Object;)Lcom/google/android/location/b/a;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/g/a/b/b/a;

    goto :goto_0
.end method

.method final a(I)Ljava/util/Iterator;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 241
    iget-object v1, p0, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    iget-object v1, v1, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v1}, Lcom/google/android/location/b/an;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 242
    iget-object v2, p0, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    iget-object v2, v2, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v2}, Lcom/google/android/location/b/an;->size()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 243
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    if-ge v0, v2, :cond_0

    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    return-object v1
.end method

.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/i/a/b/q;->d:Lcom/google/g/a/b/b/a;

    invoke-virtual {p0, p1, v0}, Lcom/google/i/a/b/q;->a(Lcom/google/g/a/b/b/a;Lcom/google/g/a/b/b/a;)V

    .line 119
    return-void
.end method

.method public final a(Lcom/google/g/a/b/b/a;Lcom/google/g/a/b/b/a;)V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/google/i/a/b/o;

    invoke-direct {v0, p1}, Lcom/google/i/a/b/o;-><init>(Lcom/google/g/a/b/b/a;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/o;Lcom/google/g/a/b/b/a;)V

    .line 105
    return-void
.end method

.method public final a(Lcom/google/i/a/b/o;Lcom/google/g/a/b/b/a;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 96
    iget-object v1, p0, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    iget-object v0, p0, Lcom/google/i/a/b/q;->c:Lcom/google/i/a/b/r;

    iget-object v0, p0, Lcom/google/i/a/b/q;->c:Lcom/google/i/a/b/r;

    invoke-interface {v0}, Lcom/google/i/a/b/r;->g()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v6

    move-object v3, p1

    move v4, v2

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/location/b/am;->a(ZLjava/lang/Object;ILjava/lang/Object;J)V

    .line 98
    return-void
.end method

.method public final a(Lcom/google/i/a/b/q;)V
    .locals 9

    .prologue
    .line 193
    iget-object v0, p1, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    iget-object v0, v0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v0}, Lcom/google/android/location/b/an;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 194
    iget-object v1, p0, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    const/4 v2, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/b/a;

    iget v4, v4, Lcom/google/android/location/b/a;->c:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/location/b/a;

    iget-object v5, v5, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/b/a;

    iget-wide v6, v0, Lcom/google/android/location/b/a;->a:J

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/location/b/am;->a(ZLjava/lang/Object;ILjava/lang/Object;J)V

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/i/a/b/q;Lcom/google/i/a/b/q;)V
    .locals 9

    .prologue
    .line 203
    iget-object v0, p2, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    iget-object v0, v0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v0}, Lcom/google/android/location/b/an;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 204
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/i/a/b/o;

    .line 205
    iget-object v0, p1, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    invoke-virtual {v0, v3}, Lcom/google/android/location/b/am;->a(Ljava/lang/Object;)Lcom/google/android/location/b/a;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    const/4 v2, 0x1

    iget v4, v0, Lcom/google/android/location/b/a;->c:I

    iget-object v5, v0, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    iget-wide v6, v0, Lcom/google/android/location/b/a;->a:J

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/location/b/am;->a(ZLjava/lang/Object;ILjava/lang/Object;J)V

    goto :goto_0

    .line 211
    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    iget-object v0, v0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v0}, Lcom/google/android/location/b/an;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/google/i/a/b/o;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/i/a/b/q;->d:Lcom/google/g/a/b/b/a;

    invoke-virtual {p0, p1, v0}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/o;Lcom/google/g/a/b/b/a;)V

    .line 112
    return-void
.end method
