.class public final Lcom/google/android/location/f/as;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Lcom/google/android/location/g/a;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/google/android/location/g/a;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/location/f/as;->a:Ljava/util/Map;

    .line 35
    iput-object p2, p0, Lcom/google/android/location/f/as;->b:Lcom/google/android/location/g/a;

    .line 36
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/location/f/as;->b:Lcom/google/android/location/g/a;

    iget-object v0, v0, Lcom/google/android/location/g/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/Map;)[F
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/high16 v8, -0x3d380000    # -100.0f

    .line 39
    iget-object v0, p0, Lcom/google/android/location/f/as;->b:Lcom/google/android/location/g/a;

    iget v0, v0, Lcom/google/android/location/g/a;->a:I

    new-array v3, v0, [F

    iget-object v0, p0, Lcom/google/android/location/f/as;->b:Lcom/google/android/location/g/a;

    iget v0, v0, Lcom/google/android/location/g/a;->a:I

    new-array v4, v0, [I

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/android/location/f/as;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v7, v3, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v7

    aput v0, v3, v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v1, v4, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, v4, v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    array-length v1, v3

    if-ge v0, v1, :cond_3

    aget v1, v4, v0

    if-nez v1, :cond_2

    aput v8, v3, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    aget v1, v3, v0

    aget v5, v4, v0

    int-to-float v5, v5

    div-float/2addr v1, v5

    aput v1, v3, v0

    goto :goto_2

    .line 40
    :cond_3
    iget-object v4, p0, Lcom/google/android/location/f/as;->b:Lcom/google/android/location/g/a;

    iget-object v0, v4, Lcom/google/android/location/g/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [F

    :goto_3
    array-length v0, v5

    if-ge v2, v0, :cond_7

    iget-object v0, v4, Lcom/google/android/location/g/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/location/g/b;

    iget v0, v1, Lcom/google/android/location/g/b;->b:I

    const/4 v6, -0x1

    if-ne v0, v6, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not compute value of regression tree. No root of the tree was defined"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v0, v1, Lcom/google/android/location/g/b;->b:I

    :goto_4
    iget-object v6, v1, Lcom/google/android/location/g/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/g/c;

    iget-object v6, v0, Lcom/google/android/location/g/c;->a:Lcom/google/android/location/g/d;

    sget-object v7, Lcom/google/android/location/g/d;->a:Lcom/google/android/location/g/d;

    if-ne v6, v7, :cond_5

    iget-object v0, v0, Lcom/google/android/location/g/c;->f:Lcom/google/android/location/g/e;

    invoke-virtual {v0, v3}, Lcom/google/android/location/g/e;->a([F)F

    move-result v0

    aput v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget v6, v0, Lcom/google/android/location/g/c;->b:I

    aget v6, v3, v6

    iget v7, v0, Lcom/google/android/location/g/c;->c:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    iget v0, v0, Lcom/google/android/location/g/c;->d:I

    goto :goto_4

    :cond_6
    iget v0, v0, Lcom/google/android/location/g/c;->e:I

    goto :goto_4

    :cond_7
    return-object v5
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    if-ne p0, p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    instance-of v2, p1, Lcom/google/android/location/f/as;

    if-nez v2, :cond_2

    move v0, v1

    .line 102
    goto :goto_0

    .line 105
    :cond_2
    check-cast p1, Lcom/google/android/location/f/as;

    .line 107
    iget-object v2, p0, Lcom/google/android/location/f/as;->a:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/android/location/f/as;->a:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/f/as;->b:Lcom/google/android/location/g/a;

    iget-object v3, p1, Lcom/google/android/location/f/as;->b:Lcom/google/android/location/g/a;

    invoke-virtual {v2, v3}, Lcom/google/android/location/g/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/location/f/as;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 115
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/f/as;->b:Lcom/google/android/location/g/a;

    invoke-virtual {v1}, Lcom/google/android/location/g/a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    return v0
.end method
