.class public final Lcom/google/android/location/b/an;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:Lcom/google/android/location/b/ae;

.field final c:Lcom/google/android/location/b/ao;


# direct methods
.method constructor <init>(ILcom/google/android/location/b/ae;Lcom/google/android/location/b/ao;)V
    .locals 2

    .prologue
    .line 218
    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 219
    iput p1, p0, Lcom/google/android/location/b/an;->a:I

    .line 220
    iput-object p2, p0, Lcom/google/android/location/b/an;->b:Lcom/google/android/location/b/ae;

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/b/an;->c:Lcom/google/android/location/b/ao;

    .line 222
    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/google/android/location/b/an;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/location/b/an;->a:I

    if-le v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/android/location/b/an;->b:Lcom/google/android/location/b/ae;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/location/b/ae;->a(I)V

    .line 230
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/b/an;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/google/android/location/b/an;->c:Lcom/google/android/location/b/ao;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/google/android/location/b/an;->c:Lcom/google/android/location/b/ao;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 236
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
