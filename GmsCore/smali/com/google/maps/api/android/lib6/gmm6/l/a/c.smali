.class public final Lcom/google/maps/api/android/lib6/gmm6/l/a/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/maps/api/android/lib6/gmm6/l/a/d;

.field private static final b:[Lcom/google/maps/api/android/lib6/gmm6/l/a/a;


# instance fields
.field private final c:I

.field private final d:J

.field private final e:[Lcom/google/maps/api/android/lib6/gmm6/l/a/d;

.field private final f:Lcom/google/maps/api/android/lib6/gmm6/l/l;

.field private g:[Lcom/google/maps/api/android/lib6/gmm6/l/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/a/d;

    const-string v1, "Unknown Road"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/a/d;

    new-array v0, v3, [Lcom/google/maps/api/android/lib6/gmm6/l/a/a;

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->b:[Lcom/google/maps/api/android/lib6/gmm6/l/a/a;

    return-void
.end method

.method public constructor <init>(J[Lcom/google/maps/api/android/lib6/gmm6/l/a/d;Lcom/google/maps/api/android/lib6/gmm6/l/l;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p3

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Segments must have at least one name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->c:I

    iput-wide p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->d:J

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->e:[Lcom/google/maps/api/android/lib6/gmm6/l/a/d;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->f:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->b:[Lcom/google/maps/api/android/lib6/gmm6/l/a/a;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->g:[Lcom/google/maps/api/android/lib6/gmm6/l/a/a;

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;I)J
    .locals 5

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x30

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->c:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->f:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 p1, v1, -0x1

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->f:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v1, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    return-object v0
.end method


# virtual methods
.method public final varargs a([Lcom/google/maps/api/android/lib6/gmm6/l/a/a;)V
    .locals 1

    array-length v0, p1

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->b:[Lcom/google/maps/api/android/lib6/gmm6/l/a/a;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->g:[Lcom/google/maps/api/android/lib6/gmm6/l/a/a;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->g:[Lcom/google/maps/api/android/lib6/gmm6/l/a/a;

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->d:J

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;

    iget-wide v4, p1, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->d:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 8

    const-wide/16 v6, 0xff

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->d:J

    const/16 v2, 0x30

    ushr-long/2addr v0, v2

    and-long/2addr v0, v6

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->d:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->d:J

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[name: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->e:[Lcom/google/maps/api/android/lib6/gmm6/l/a/d;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " unroutable: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " leaves-region: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " enters-region: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->c:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " num-points: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->f:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " first-point: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " last-point: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->f:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " num-arcs: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->g:[Lcom/google/maps/api/android/lib6/gmm6/l/a/a;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
