.class public final Lcom/google/android/location/f/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/location/f/as;

.field private final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/location/f/as;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/google/android/location/f/s;->b:Ljava/util/Map;

    .line 81
    iput-object p1, p0, Lcom/google/android/location/f/s;->a:Lcom/google/android/location/f/as;

    .line 82
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Lcom/google/android/location/f/t;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 98
    iget-object v0, p0, Lcom/google/android/location/f/s;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 100
    new-array v1, v1, [F

    iget-object v0, p0, Lcom/google/android/location/f/s;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v3

    move-object v2, v1

    .line 108
    :goto_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 109
    const/high16 v0, 0x3f800000    # 1.0f

    array-length v1, v2

    int-to-float v1, v1

    div-float v5, v0, v1

    .line 110
    array-length v6, v2

    :goto_1
    if-ge v3, v6, :cond_3

    aget v0, v2, v3

    .line 111
    iget-object v1, p0, Lcom/google/android/location/f/s;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/f/s;->a:Lcom/google/android/location/f/as;

    invoke-virtual {v0, p1}, Lcom/google/android/location/f/as;->a(Ljava/util/Map;)[F

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 113
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 118
    :cond_3
    new-instance v0, Lcom/google/android/location/f/t;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/location/f/t;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    if-ne p0, p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    instance-of v2, p1, Lcom/google/android/location/f/s;

    if-nez v2, :cond_2

    move v0, v1

    .line 128
    goto :goto_0

    .line 131
    :cond_2
    check-cast p1, Lcom/google/android/location/f/s;

    .line 133
    iget-object v2, p0, Lcom/google/android/location/f/s;->b:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/android/location/f/s;->b:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/f/s;->a:Lcom/google/android/location/f/as;

    iget-object v3, p1, Lcom/google/android/location/f/s;->a:Lcom/google/android/location/f/as;

    invoke-virtual {v2, v3}, Lcom/google/android/location/f/as;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/location/f/s;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 141
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/f/s;->a:Lcom/google/android/location/f/as;

    invoke-virtual {v1}, Lcom/google/android/location/f/as;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    return v0
.end method
