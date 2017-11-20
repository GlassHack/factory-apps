.class public final Lcom/google/android/location/h/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/util/Map;


# direct methods
.method public constructor <init>(ILjava/util/Map;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    const/4 v3, -0x1

    .line 271
    const/4 v2, 0x0

    .line 273
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v5

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 275
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v4, v7

    .line 276
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v3, :cond_1

    .line 277
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    move-object v2, v0

    move v3, v1

    .line 280
    goto :goto_0

    .line 285
    :cond_0
    sub-int v0, v4, v3

    sub-int v0, v3, v0

    .line 287
    const/16 v1, 0x9

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 288
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 290
    iput p1, p0, Lcom/google/android/location/h/r;->b:I

    .line 291
    iput-object p2, p0, Lcom/google/android/location/h/r;->e:Ljava/util/Map;

    .line 292
    iput-object v2, p0, Lcom/google/android/location/h/r;->c:Ljava/lang/String;

    .line 293
    iput v3, p0, Lcom/google/android/location/h/r;->d:I

    .line 294
    iput v0, p0, Lcom/google/android/location/h/r;->a:I

    .line 295
    return-void

    :cond_1
    move-object v0, v2

    move v1, v3

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 302
    iget v0, p0, Lcom/google/android/location/h/r;->a:I

    iget v1, p0, Lcom/google/android/location/h/r;->b:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/location/h/r;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LevelClusterMatchResult [bestMatchCluster="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/location/h/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numMatchingAps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/h/r;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/h/r;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", matchCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/h/r;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
