.class public final Lcom/google/android/maps/driveabout/nav/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/google/android/maps/driveabout/nav/w;

.field private final b:I

.field private final c:Lcom/google/android/maps/driveabout/nav/ah;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:I

.field private final j:Z

.field private final k:Lcom/google/android/maps/driveabout/nav/w;


# direct methods
.method constructor <init>([Lcom/google/android/maps/driveabout/nav/w;ILcom/google/android/maps/driveabout/nav/ah;IIIIZIZLcom/google/android/maps/driveabout/nav/w;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/p;->a:[Lcom/google/android/maps/driveabout/nav/w;

    .line 84
    iput p2, p0, Lcom/google/android/maps/driveabout/nav/p;->b:I

    .line 85
    iput-object p3, p0, Lcom/google/android/maps/driveabout/nav/p;->c:Lcom/google/android/maps/driveabout/nav/ah;

    .line 86
    iput p4, p0, Lcom/google/android/maps/driveabout/nav/p;->d:I

    .line 87
    iput p5, p0, Lcom/google/android/maps/driveabout/nav/p;->e:I

    .line 88
    iput p6, p0, Lcom/google/android/maps/driveabout/nav/p;->f:I

    .line 89
    iput p7, p0, Lcom/google/android/maps/driveabout/nav/p;->g:I

    .line 90
    iput-boolean p8, p0, Lcom/google/android/maps/driveabout/nav/p;->h:Z

    .line 91
    iput p9, p0, Lcom/google/android/maps/driveabout/nav/p;->i:I

    .line 92
    iput-boolean p10, p0, Lcom/google/android/maps/driveabout/nav/p;->j:Z

    .line 93
    iput-object p11, p0, Lcom/google/android/maps/driveabout/nav/p;->k:Lcom/google/android/maps/driveabout/nav/w;

    .line 94
    return-void
.end method

.method private m()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->a:[Lcom/google/android/maps/driveabout/nav/w;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/p;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/p;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/p;->e:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a(F)Lcom/google/android/maps/driveabout/model/as;
    .locals 9

    .prologue
    .line 175
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/p;->d:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->a:[Lcom/google/android/maps/driveabout/nav/w;

    if-nez v0, :cond_1

    .line 176
    :cond_0
    const/4 v0, 0x0

    .line 189
    :goto_0
    return-object v0

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v1

    .line 180
    iget v2, p0, Lcom/google/android/maps/driveabout/nav/p;->d:I

    add-int/lit8 v2, v2, 0x1

    .line 181
    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/nav/w;->b(I)D

    move-result-wide v3

    .line 182
    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_2

    .line 184
    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/model/ab;->b()D

    move-result-wide v5

    .line 183
    invoke-static {v5, v6}, Lcom/google/android/maps/driveabout/model/ab;->a(D)D

    move-result-wide v5

    .line 185
    float-to-double v7, p1

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    .line 186
    invoke-virtual {v0, v3, v4}, Lcom/google/android/maps/driveabout/nav/w;->a(D)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 187
    new-instance v0, Lcom/google/android/maps/driveabout/model/as;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/model/as;-><init>(Lcom/google/android/maps/driveabout/model/ag;II)V

    goto :goto_0

    .line 189
    :cond_2
    new-instance v0, Lcom/google/android/maps/driveabout/model/as;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/as;-><init>(Lcom/google/android/maps/driveabout/model/ag;I)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/p;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/p;->g:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/p;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/p;->f:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/p;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/p;->d:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final e()[Lcom/google/android/maps/driveabout/nav/w;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->a:[Lcom/google/android/maps/driveabout/nav/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->a:[Lcom/google/android/maps/driveabout/nav/w;

    invoke-virtual {v0}, [Lcom/google/android/maps/driveabout/nav/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/nav/w;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/google/android/maps/driveabout/nav/w;
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/p;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->a:[Lcom/google/android/maps/driveabout/nav/w;

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/p;->b:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Lcom/google/android/maps/driveabout/nav/ah;
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/p;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->c:Lcom/google/android/maps/driveabout/nav/ah;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Lcom/google/android/maps/driveabout/nav/w;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->k:Lcom/google/android/maps/driveabout/nav/w;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/p;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/p;->h:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/p;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/p;->i:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/p;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/p;->j:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final l()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/p;->b:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "[numRoutes:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->a:[Lcom/google/android/maps/driveabout/nav/w;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    const-string v0, " curRoute:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/p;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    const-string v0, " curStep:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->c:Lcom/google/android/maps/driveabout/nav/ah;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 226
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    const-string v0, " curSegment:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/p;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    const-string v0, " metersToNextStep:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/p;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    const-string v0, " metersRemaining:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/p;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    const-string v0, " secondsRemaining:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/p;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    const-string v0, " areAlternatesStale:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/nav/p;->h:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 232
    const-string v0, " trafficStatus:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/p;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    const-string v0, " onRoute:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/nav/p;->j:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 234
    const-string v0, " hasPathfinderRoute:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->k:Lcom/google/android/maps/driveabout/nav/w;

    if-nez v0, :cond_2

    const-string v0, "false"

    .line 235
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->a:[Lcom/google/android/maps/driveabout/nav/w;

    array-length v0, v0

    goto/16 :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/p;->c:Lcom/google/android/maps/driveabout/nav/ah;

    .line 226
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->i()I

    move-result v0

    goto :goto_1

    .line 234
    :cond_2
    const-string v0, "true"

    goto :goto_2
.end method
