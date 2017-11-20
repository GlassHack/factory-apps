.class public Lcom/google/android/location/b/ap;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 24
    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 26
    iput p1, p0, Lcom/google/android/location/b/ap;->a:I

    .line 27
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/android/location/b/ap;->a:I

    return v0
.end method

.method public final a(JJ)V
    .locals 7

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/android/location/b/ap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/f/aw;

    .line 62
    iget-wide v4, v1, Lcom/google/android/location/f/aw;->b:J

    cmp-long v3, v4, p1

    if-gez v3, :cond_1

    .line 63
    invoke-virtual {p0, v0}, Lcom/google/android/location/b/ap;->a(Ljava/util/Map$Entry;)V

    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 65
    :cond_1
    iget-wide v4, v1, Lcom/google/android/location/f/aw;->c:J

    cmp-long v1, v4, p3

    if-gez v1, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Lcom/google/android/location/b/ap;->a(Ljava/util/Map$Entry;)V

    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 70
    :cond_2
    return-void
.end method

.method protected a(Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/android/location/b/ap;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/location/b/ap;->a:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    .line 32
    :goto_0
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/location/b/ap;->a(Ljava/util/Map$Entry;)V

    .line 35
    :cond_0
    return v0

    .line 31
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
