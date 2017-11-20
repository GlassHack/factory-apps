.class public final Lcom/google/h/a/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/h/a/b/a/b;


# instance fields
.field public final b:Lcom/google/h/a/b/a/c;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:F

.field public final g:D

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/google/h/a/b/a/b;

    sget-object v1, Lcom/google/h/a/b/a/c;->e:Lcom/google/h/a/b/a/c;

    invoke-direct {v0, v1}, Lcom/google/h/a/b/a/b;-><init>(Lcom/google/h/a/b/a/c;)V

    sput-object v0, Lcom/google/h/a/b/a/b;->a:Lcom/google/h/a/b/a/b;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;IFDLcom/google/h/a/b/a/c;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/google/h/a/b/a/b;->c:I

    .line 79
    iput p2, p0, Lcom/google/h/a/b/a/b;->d:I

    .line 80
    iput p3, p0, Lcom/google/h/a/b/a/b;->e:I

    .line 81
    iput-object p4, p0, Lcom/google/h/a/b/a/b;->h:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lcom/google/h/a/b/a/b;->i:Ljava/lang/String;

    .line 83
    iput p6, p0, Lcom/google/h/a/b/a/b;->j:I

    .line 84
    iput p7, p0, Lcom/google/h/a/b/a/b;->f:F

    .line 85
    iput-wide p8, p0, Lcom/google/h/a/b/a/b;->g:D

    .line 86
    if-nez p10, :cond_0

    sget-object p10, Lcom/google/h/a/b/a/c;->e:Lcom/google/h/a/b/a/c;

    :cond_0
    iput-object p10, p0, Lcom/google/h/a/b/a/b;->b:Lcom/google/h/a/b/a/c;

    .line 87
    return-void
.end method

.method private constructor <init>(Lcom/google/h/a/b/a/c;)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 91
    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v5, v4

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/h/a/b/a/b;-><init>(IIILjava/lang/String;Ljava/lang/String;IFDLcom/google/h/a/b/a/c;)V

    .line 93
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/h/a/b/a/b;)D
    .locals 12

    .prologue
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 168
    iget v0, p0, Lcom/google/h/a/b/a/b;->c:I

    int-to-double v0, v0

    iget v2, p0, Lcom/google/h/a/b/a/b;->d:I

    int-to-double v2, v2

    iget v4, p1, Lcom/google/h/a/b/a/b;->c:I

    int-to-double v4, v4

    iget v6, p1, Lcom/google/h/a/b/a/b;->d:I

    int-to-double v6, v6

    invoke-static {v0, v1}, Lcom/google/h/a/b/a/a;->a(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Lcom/google/h/a/b/a/a;->a(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Lcom/google/h/a/b/a/a;->a(D)D

    move-result-wide v4

    invoke-static {v6, v7}, Lcom/google/h/a/b/a/a;->a(D)D

    move-result-wide v6

    sub-double v8, v4, v0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    sub-double v2, v6, v2

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v6, v8, v8

    mul-double/2addr v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v0, v8, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v2

    const-wide v2, 0x415849c600000000L    # 6367000.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 114
    instance-of v1, p1, Lcom/google/h/a/b/a/b;

    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    check-cast p1, Lcom/google/h/a/b/a/b;

    .line 119
    iget v1, p0, Lcom/google/h/a/b/a/b;->c:I

    iget v2, p1, Lcom/google/h/a/b/a/b;->c:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/h/a/b/a/b;->d:I

    iget v2, p1, Lcom/google/h/a/b/a/b;->d:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/h/a/b/a/b;->e:I

    iget v2, p1, Lcom/google/h/a/b/a/b;->e:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/h/a/b/a/b;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/h/a/b/a/b;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/c/a/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/h/a/b/a/b;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/h/a/b/a/b;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/c/a/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/h/a/b/a/b;->j:I

    iget v2, p1, Lcom/google/h/a/b/a/b;->j:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/h/a/b/a/b;->f:F

    iget v2, p1, Lcom/google/h/a/b/a/b;->f:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/h/a/b/a/b;->g:D

    iget-wide v4, p1, Lcom/google/h/a/b/a/b;->g:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/h/a/b/a/b;->b:Lcom/google/h/a/b/a/c;

    iget-object v2, p1, Lcom/google/h/a/b/a/b;->b:Lcom/google/h/a/b/a/c;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 132
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/h/a/b/a/b;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/h/a/b/a/b;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/h/a/b/a/b;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/h/a/b/a/b;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/h/a/b/a/b;->i:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/h/a/b/a/b;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/h/a/b/a/b;->f:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/h/a/b/a/b;->g:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/h/a/b/a/b;->b:Lcom/google/h/a/b/a/c;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Position [latE7="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/h/a/b/a/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lngE7="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/h/a/b/a/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accuracyMm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/h/a/b/a/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clusterId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/h/a/b/a/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", levelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/h/a/b/a/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bearing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/h/a/b/a/b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speedMps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/h/a/b/a/b;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", altitudeMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/h/a/b/a/b;->g:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/h/a/b/a/b;->b:Lcom/google/h/a/b/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
