.class public Lcom/google/maps/api/android/lib6/gmm6/h/v;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/maps/api/android/lib6/gmm6/h/v;


# instance fields
.field private final b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/w;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/w;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a:Lcom/google/maps/api/android/lib6/gmm6/h/v;

    return-void
.end method

.method synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/v;-><init>(Lcom/google/maps/api/android/lib6/gmm6/h/y;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/h/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->c:I

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    return-void
.end method

.method public static a()Lcom/google/maps/api/android/lib6/gmm6/h/v;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a:Lcom/google/maps/api/android/lib6/gmm6/h/v;

    return-object v0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/h/y;)Lcom/google/maps/api/android/lib6/gmm6/h/v;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/v;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c()Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/v;-><init>(Lcom/google/maps/api/android/lib6/gmm6/h/y;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)D
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->e()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final a(II)I
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->d()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-lt p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v0

    return v0
.end method

.method public a(III)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c(III)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    const/4 v3, 0x3

    new-array v3, v3, [I

    aput p1, v3, v1

    aput p2, v3, v0

    const/4 v1, 0x2

    aput p3, v3, v1

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b([I)V

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->c:I

    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/h/g;)Z
    .locals 8

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/h/g;->a:Lcom/google/maps/api/android/lib6/gmm6/h/r;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->d()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->c()D

    move-result-wide v2

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v4, v0

    sub-double v6, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v4, v6, v4

    if-lez v4, :cond_0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)D
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->e()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final b()V
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->c:I

    return-void
.end method

.method public c()D
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v1, v0, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b(III)D

    move-result-wide v4

    add-double/2addr v2, v4

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c:I

    div-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->e()I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/h/v;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/h/v;

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nint[] triangles = {\n    "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    iget v3, v1, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c:I

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c:I

    add-int/lit8 v4, v4, -0x3

    if-ne v1, v4, :cond_0

    const-string v4, "\n};\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    const-string v4, ",\n    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->e()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_2

    const-string v3, "cutVertices.add(new Vertex2d("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b(I)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/h/v;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c(I)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "));\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
