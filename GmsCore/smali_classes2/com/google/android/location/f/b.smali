.class public final Lcom/google/android/location/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/f/p;


# instance fields
.field private final a:Lcom/google/android/location/f/as;

.field private final b:Lcom/google/android/location/f/as;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/location/f/as;Lcom/google/android/location/f/as;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/android/location/f/b;->a:Lcom/google/android/location/f/as;

    .line 64
    iput-object p2, p0, Lcom/google/android/location/f/b;->b:Lcom/google/android/location/f/as;

    .line 65
    iput p3, p0, Lcom/google/android/location/f/b;->c:I

    .line 66
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/google/android/location/f/b;->c:I

    return v0
.end method

.method public final a(Ljava/util/List;)Lcom/google/android/location/f/q;
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 73
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/f/b;->a:Lcom/google/android/location/f/as;

    invoke-virtual {v0, v1}, Lcom/google/android/location/f/as;->a(Ljava/util/Map;)[F

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/f/b;->b:Lcom/google/android/location/f/as;

    invoke-virtual {v2, v1}, Lcom/google/android/location/f/as;->a(Ljava/util/Map;)[F

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/location/g/g;->a([F)Lcom/google/android/location/g/h;

    move-result-object v8

    invoke-static {v1}, Lcom/google/android/location/g/g;->a([F)Lcom/google/android/location/g/h;

    move-result-object v9

    iget v0, v8, Lcom/google/android/location/g/h;->a:F

    float-to-double v0, v0

    iget v2, v9, Lcom/google/android/location/g/h;->a:F

    float-to-double v2, v2

    iget v4, v8, Lcom/google/android/location/g/h;->a:F

    iget v5, v8, Lcom/google/android/location/g/h;->b:F

    add-float/2addr v4, v5

    float-to-double v4, v4

    iget v6, v9, Lcom/google/android/location/g/h;->a:F

    iget v7, v9, Lcom/google/android/location/g/h;->b:F

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/f/o;->a(DDDD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/location/f/b;->a:Lcom/google/android/location/f/as;

    invoke-virtual {v2}, Lcom/google/android/location/f/as;->a()I

    move-result v2

    if-eq v2, v10, :cond_1

    iget-object v2, p0, Lcom/google/android/location/f/b;->b:Lcom/google/android/location/f/as;

    invoke-virtual {v2}, Lcom/google/android/location/f/as;->a()I

    move-result v2

    if-ne v2, v10, :cond_2

    :cond_1
    const v0, 0x469c4000    # 20000.0f

    :goto_1
    new-instance v1, Lcom/google/android/location/f/q;

    iget v2, v8, Lcom/google/android/location/g/h;->a:F

    float-to-int v2, v2

    iget v3, v9, Lcom/google/android/location/g/h;->a:F

    float-to-int v3, v3

    float-to-int v0, v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/location/f/q;-><init>(III)V

    return-object v1

    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    double-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    goto :goto_1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    if-ne p0, p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    instance-of v2, p1, Lcom/google/android/location/f/b;

    if-nez v2, :cond_2

    move v0, v1

    .line 146
    goto :goto_0

    .line 149
    :cond_2
    check-cast p1, Lcom/google/android/location/f/b;

    .line 151
    iget v2, p0, Lcom/google/android/location/f/b;->c:I

    iget v3, p1, Lcom/google/android/location/f/b;->c:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/location/f/b;->a:Lcom/google/android/location/f/as;

    iget-object v3, p1, Lcom/google/android/location/f/b;->a:Lcom/google/android/location/f/as;

    invoke-virtual {v2, v3}, Lcom/google/android/location/f/as;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/f/b;->b:Lcom/google/android/location/f/as;

    iget-object v3, p1, Lcom/google/android/location/f/b;->b:Lcom/google/android/location/f/as;

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
    .line 158
    iget v0, p0, Lcom/google/android/location/f/b;->c:I

    add-int/lit16 v0, v0, 0x20f

    .line 160
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/f/b;->a:Lcom/google/android/location/f/as;

    invoke-virtual {v1}, Lcom/google/android/location/f/as;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 161
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/f/b;->b:Lcom/google/android/location/f/as;

    invoke-virtual {v1}, Lcom/google/android/location/f/as;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    return v0
.end method
