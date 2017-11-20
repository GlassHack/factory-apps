.class public final Lcom/google/maps/api/android/lib6/gmm6/l/cc;
.super Lcom/google/maps/api/android/lib6/gmm6/l/ce;


# instance fields
.field public final a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field public final b:Lcom/google/maps/api/android/lib6/gmm6/l/cq;

.field public final c:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

.field public final d:Lcom/google/maps/api/android/lib6/gmm6/l/p;

.field private final f:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private g:[[Lcom/google/maps/api/android/lib6/gmm6/l/h;


# direct methods
.method private constructor <init>([Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 10

    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ce;-><init>()V

    array-length v0, p1

    new-array v0, v0, [Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move v0, v4

    :goto_0
    if-ge v0, v7, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    aput-object v2, v1, v0

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->i(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/cq;

    invoke-direct {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/cq;-><init>([Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->b:Lcom/google/maps/api/android/lib6/gmm6/l/cq;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->b:Lcom/google/maps/api/android/lib6/gmm6/l/cq;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cq;->b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->d:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->d:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(Lcom/google/maps/api/android/lib6/gmm6/l/p;)Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->c:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->c:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->e:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->e:Z

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->e:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    filled-new-array {v9, v0}, [I

    move-result-object v0

    const-class v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->g:[[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move v5, v4

    move v0, v4

    move v2, v4

    :goto_1
    if-ge v5, v7, :cond_4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v1, v1, v5

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v6, v6, v5

    invoke-virtual {v1, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    :goto_2
    if-eq v1, v2, :cond_7

    if-lez v5, :cond_1

    if-ge v0, v8, :cond_1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    add-int/lit8 v6, v5, -0x1

    aget-object v2, v2, v6

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v6, v6, v5

    invoke-direct {p0, v2, v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_3
    if-lez v5, :cond_2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->g:[[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    add-int/lit8 v6, v0, -0x1

    aget-object v2, v2, v6

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v6, v6, v5

    aput-object v6, v2, v3

    :cond_2
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->g:[[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v2, v2, v0

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v6, v6, v5

    aput-object v6, v2, v4

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v2

    move v2, v1

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_2

    :cond_4
    if-ge v0, v9, :cond_5

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v2, v2, v4

    invoke-direct {p0, v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    :cond_5
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->g:[[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v0, v0, v8

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v1, v1, v4

    aput-object v1, v0, v3

    :cond_6
    return-void

    :cond_7
    move v1, v2

    goto :goto_3
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/cc;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    invoke-direct {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cc;-><init>([Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    return-object v1
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v1, 0x20000001

    const v2, -0x20000001

    iget v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v0, v3

    int-to-double v4, v0

    iget v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v0, v3

    int-to-double v6, v0

    div-double/2addr v4, v6

    iget v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v0, v3

    int-to-double v6, v0

    mul-double/2addr v4, v6

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    int-to-double v6, v0

    add-double/2addr v4, v6

    double-to-int v0, v4

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v4, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->g:[[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    add-int/lit8 v4, p3, -0x1

    aget-object v3, v3, v4

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v4, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    aput-object v4, v3, v9

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->g:[[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v2, v2, p3

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v3, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    aput-object v3, v2, v8

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->g:[[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    add-int/lit8 v4, p3, -0x1

    aget-object v3, v3, v4

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v4, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    aput-object v4, v3, v9

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->g:[[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v1, v1, p3

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v3, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    aput-object v3, v1, v8

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/cd;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->c:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    return-object v0
.end method

.method public final a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(I[Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->g:[[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->g:[[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v0, v0, p1

    aget-object v0, v0, v2

    aput-object v0, p2, v2

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v0, v0, p1

    aput-object v0, p2, v1

    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v0, v1, v0

    aput-object v0, p2, v2

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->b:Lcom/google/maps/api/android/lib6/gmm6/l/cq;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/cq;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v3, v2

    move v0, v2

    :goto_1
    const/4 v4, 0x6

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->g:[[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v4, v4, v3

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->g:[[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v5, v5, v3

    aget-object v5, v5, v1

    invoke-static {v4, v5, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->c:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/q;->a()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/q;->b()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/q;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/gmm6/l/q;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->b:Lcom/google/maps/api/android/lib6/gmm6/l/cq;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
