.class public Lcom/google/glass/maps/map/ColorPolyline;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final centerline:Lcom/google/android/maps/driveabout/model/ag;

.field protected final colorIndexes:[I

.field protected final colorTable:[[F

.field protected final hasColorSegments:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/model/ag;[[F[IZ)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/glass/maps/map/ColorPolyline;->centerline:Lcom/google/android/maps/driveabout/model/ag;

    .line 45
    iput-object p3, p0, Lcom/google/glass/maps/map/ColorPolyline;->colorIndexes:[I

    .line 46
    iput-boolean p4, p0, Lcom/google/glass/maps/map/ColorPolyline;->hasColorSegments:Z

    .line 47
    iput-object p2, p0, Lcom/google/glass/maps/map/ColorPolyline;->colorTable:[[F

    .line 48
    return-void
.end method


# virtual methods
.method public clip(Lcom/google/android/maps/driveabout/model/am;)Ljava/util/List;
    .locals 9

    .prologue
    .line 69
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance v0, Lcom/google/android/maps/driveabout/model/f;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/model/f;-><init>(Lcom/google/android/maps/driveabout/model/an;)V

    .line 71
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/google/glass/maps/map/ColorPolyline;->centerline:Lcom/google/android/maps/driveabout/model/ag;

    iget-object v2, p0, Lcom/google/glass/maps/map/ColorPolyline;->colorIndexes:[I

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/google/android/maps/driveabout/model/f;->a(Lcom/google/android/maps/driveabout/model/ag;[ILjava/util/List;Ljava/util/List;)V

    .line 75
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 76
    new-instance v6, Lcom/google/glass/maps/map/ColorPolyline;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/ag;

    iget-object v7, p0, Lcom/google/glass/maps/map/ColorPolyline;->colorTable:[[F

    .line 77
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget-boolean v8, p0, Lcom/google/glass/maps/map/ColorPolyline;->hasColorSegments:Z

    invoke-direct {v6, v0, v7, v1, v8}, Lcom/google/glass/maps/map/ColorPolyline;-><init>(Lcom/google/android/maps/driveabout/model/ag;[[F[IZ)V

    .line 76
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 79
    :cond_0
    return-object v3
.end method

.method public getCenterline()Lcom/google/android/maps/driveabout/model/ag;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/maps/map/ColorPolyline;->centerline:Lcom/google/android/maps/driveabout/model/ag;

    return-object v0
.end method

.method public hasColorSegments()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/glass/maps/map/ColorPolyline;->hasColorSegments:Z

    return v0
.end method

.method public populateColorBuffer(Lcom/google/glass/maps/opengl/GLBuffer$Float;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/google/glass/maps/map/ColorPolyline;->colorTable:[[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/map/ColorPolyline;->colorIndexes:[I

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/map/ColorPolyline;->centerline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v3

    .line 142
    invoke-virtual {p1}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->componentsPerElement()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 143
    const/4 v0, 0x2

    if-ne v3, v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/google/glass/maps/map/ColorPolyline;->colorTable:[[F

    iget-object v1, p0, Lcom/google/glass/maps/map/ColorPolyline;->colorIndexes:[I

    aget v1, v1, v2

    aget-object v0, v0, v1

    .line 145
    :goto_2
    const/4 v1, 0x6

    if-ge v2, v1, :cond_0

    .line 146
    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    .line 142
    goto :goto_1

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/map/ColorPolyline;->colorTable:[[F

    iget-object v4, p0, Lcom/google/glass/maps/map/ColorPolyline;->colorIndexes:[I

    aget v2, v4, v2

    aget-object v0, v0, v2

    .line 150
    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    .line 151
    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    .line 152
    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    .line 153
    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    .line 155
    :goto_3
    add-int/lit8 v2, v3, -0x1

    if-ge v1, v2, :cond_4

    .line 157
    iget-object v2, p0, Lcom/google/glass/maps/map/ColorPolyline;->colorTable:[[F

    iget-object v4, p0, Lcom/google/glass/maps/map/ColorPolyline;->colorIndexes:[I

    aget v4, v4, v1

    aget-object v2, v2, v4

    .line 158
    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    .line 159
    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    .line 160
    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    .line 161
    invoke-virtual {p1, v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    .line 162
    invoke-virtual {p1, v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    .line 156
    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_3

    .line 166
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    .line 167
    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    .line 168
    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    .line 169
    invoke-virtual {p1, v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    goto :goto_0
.end method

.method public simplify(F)Lcom/google/glass/maps/map/ColorPolyline;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Lcom/google/glass/maps/map/ColorPolyline;->centerline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/model/ag;->a(FI)[Z

    move-result-object v3

    move v0, v1

    .line 93
    :goto_0
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    .line 94
    iget-object v4, p0, Lcom/google/glass/maps/map/ColorPolyline;->colorIndexes:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/google/glass/maps/map/ColorPolyline;->colorIndexes:[I

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    if-eq v4, v5, :cond_0

    .line 95
    aput-boolean v1, v3, v0

    .line 93
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    move v1, v2

    .line 101
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 102
    aget-boolean v4, v3, v0

    if-eqz v4, :cond_2

    .line 103
    add-int/lit8 v1, v1, 0x1

    .line 101
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/map/ColorPolyline;->centerline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v0

    if-ne v1, v0, :cond_4

    .line 123
    :goto_2
    return-object p0

    .line 111
    :cond_4
    new-array v4, v1, [I

    .line 112
    mul-int/lit8 v0, v1, 0x3

    new-array v1, v0, [I

    .line 114
    new-instance v5, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v5}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    move v0, v2

    .line 115
    :goto_3
    array-length v6, v3

    if-ge v2, v6, :cond_6

    .line 116
    aget-boolean v6, v3, v2

    if-eqz v6, :cond_5

    .line 117
    iget-object v6, p0, Lcom/google/glass/maps/map/ColorPolyline;->centerline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v6, v2, v5}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 118
    invoke-virtual {v5, v1, v0}, Lcom/google/android/maps/driveabout/model/ab;->a([II)V

    .line 119
    iget-object v6, p0, Lcom/google/glass/maps/map/ColorPolyline;->colorIndexes:[I

    aget v6, v6, v2

    aput v6, v4, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 115
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 123
    :cond_6
    new-instance v0, Lcom/google/glass/maps/map/ColorPolyline;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/model/ag;->a([I)Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/map/ColorPolyline;->colorTable:[[F

    iget-boolean v3, p0, Lcom/google/glass/maps/map/ColorPolyline;->hasColorSegments:Z

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/glass/maps/map/ColorPolyline;-><init>(Lcom/google/android/maps/driveabout/model/ag;[[F[IZ)V

    move-object p0, v0

    goto :goto_2
.end method
