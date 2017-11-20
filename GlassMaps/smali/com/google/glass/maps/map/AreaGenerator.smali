.class public Lcom/google/glass/maps/map/AreaGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final color:[F

.field private final p0:Lcom/google/android/maps/driveabout/model/ab;

.field private final p1:Lcom/google/android/maps/driveabout/model/ab;

.field private final p2:Lcom/google/android/maps/driveabout/model/ab;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/AreaGenerator;->p0:Lcom/google/android/maps/driveabout/model/ab;

    .line 20
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/AreaGenerator;->p1:Lcom/google/android/maps/driveabout/model/ab;

    .line 21
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/AreaGenerator;->p2:Lcom/google/android/maps/driveabout/model/ab;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/maps/map/AreaGenerator;->color:[F

    return-void
.end method


# virtual methods
.method public addArea(Lcom/google/android/maps/driveabout/model/d;Lcom/google/android/maps/driveabout/model/am;Lcom/google/glass/maps/opengl/GLBuffer$Float;Lcom/google/glass/maps/opengl/GLBuffer$Float;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 37
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/d;->b()Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/aq;->c()I

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/d;->b()Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/model/aq;->b(I)I

    move-result v0

    .line 41
    iget-object v1, p0, Lcom/google/glass/maps/map/AreaGenerator;->color:[F

    invoke-static {v0, v1}, Lcom/google/glass/maps/util/ColorUtil;->argbToRgbaFloats(I[F)V

    .line 43
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/d;->a()Lcom/google/android/maps/driveabout/model/az;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/az;->a()I

    move-result v7

    .line 45
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/model/am;->g()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v1, v2

    .line 46
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/model/am;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    move v1, v6

    .line 48
    :goto_0
    if-ge v1, v7, :cond_2

    .line 49
    iget-object v3, p0, Lcom/google/glass/maps/map/AreaGenerator;->p0:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v4, p0, Lcom/google/glass/maps/map/AreaGenerator;->p1:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v5, p0, Lcom/google/glass/maps/map/AreaGenerator;->p2:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/model/az;->a(ILcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 50
    iget-object v3, p0, Lcom/google/glass/maps/map/AreaGenerator;->p0:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    iget-object v4, p0, Lcom/google/glass/maps/map/AreaGenerator;->p0:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    invoke-virtual {p3, v3, v4}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 51
    iget-object v3, p0, Lcom/google/glass/maps/map/AreaGenerator;->p1:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    iget-object v4, p0, Lcom/google/glass/maps/map/AreaGenerator;->p1:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    invoke-virtual {p3, v3, v4}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 52
    iget-object v3, p0, Lcom/google/glass/maps/map/AreaGenerator;->p2:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    iget-object v4, p0, Lcom/google/glass/maps/map/AreaGenerator;->p2:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    invoke-virtual {p3, v3, v4}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v6

    .line 56
    :goto_1
    mul-int/lit8 v1, v7, 0x3

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/google/glass/maps/map/AreaGenerator;->color:[F

    const/4 v2, 0x3

    invoke-virtual {p4, v1, v6, v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([FII)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getNumVertices(Lcom/google/android/maps/driveabout/model/d;)I
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/d;->b()Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/aq;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/d;->a()Lcom/google/android/maps/driveabout/model/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/az;->b()I

    move-result v0

    goto :goto_0
.end method
