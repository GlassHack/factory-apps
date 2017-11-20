.class public final Lcom/google/maps/api/android/lib6/gmm6/l/x;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static b:Lcom/google/maps/api/android/lib6/gmm6/l/x;


# instance fields
.field private final c:I

.field private final d:I

.field private final e:[I

.field private final f:[Lcom/google/maps/api/android/lib6/gmm6/l/w;

.field private final g:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

.field private final h:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

.field private final i:Lcom/google/maps/api/android/lib6/gmm6/l/w;

.field private final j:Lcom/google/maps/api/android/lib6/gmm6/l/ct;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v2, 0x0

    new-array v0, v2, [I

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->a:[I

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/x;

    const/4 v1, -0x1

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/l/x;->a:[I

    new-array v4, v2, [Lcom/google/maps/api/android/lib6/gmm6/l/w;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->a()Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    move-result-object v5

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/l/ac;->a()Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    move-result-object v6

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->a()Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/l/x;-><init>(II[I[Lcom/google/maps/api/android/lib6/gmm6/l/w;Lcom/google/maps/api/android/lib6/gmm6/l/ad;Lcom/google/maps/api/android/lib6/gmm6/l/ac;Lcom/google/maps/api/android/lib6/gmm6/l/w;Lcom/google/maps/api/android/lib6/gmm6/l/ct;)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    return-void
.end method

.method public constructor <init>(II[I[Lcom/google/maps/api/android/lib6/gmm6/l/w;Lcom/google/maps/api/android/lib6/gmm6/l/ad;Lcom/google/maps/api/android/lib6/gmm6/l/ac;Lcom/google/maps/api/android/lib6/gmm6/l/w;Lcom/google/maps/api/android/lib6/gmm6/l/ct;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->c:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->d:I

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->e:[I

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/w;

    iput-object p5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->g:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    iput-object p6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->h:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    iput-object p7, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    iput-object p8, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->j:Lcom/google/maps/api/android/lib6/gmm6/l/ct;

    return-void
.end method

.method public static a()Lcom/google/maps/api/android/lib6/gmm6/l/x;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    return-object v0
.end method

.method public static a(ILjava/io/DataInput;I)Lcom/google/maps/api/android/lib6/gmm6/l/x;
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v5

    new-array v3, v5, [I

    move v4, v1

    :goto_0
    if-ge v4, v5, :cond_1

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v6

    aput v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v0

    :cond_1
    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v5

    new-array v4, v5, [Lcom/google/maps/api/android/lib6/gmm6/l/w;

    :goto_1
    if-ge v1, v5, :cond_3

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->a(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v6

    aput-object v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v4, v0

    :cond_3
    const/4 v1, 0x4

    invoke-static {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->a(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    move-result-object v5

    :goto_2
    const/16 v1, 0x8

    invoke-static {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ac;->a(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    move-result-object v6

    :goto_3
    const/16 v1, 0x10

    invoke-static {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->a(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v7

    :goto_4
    const/16 v1, 0xb

    if-ne p2, v1, :cond_4

    const/16 v1, 0x20

    invoke-static {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v8

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ct;

    invoke-direct {v0, v1, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/ct;-><init>(Ljava/lang/String;I)V

    move-object v8, v0

    :goto_5
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/x;

    move v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/l/x;-><init>(II[I[Lcom/google/maps/api/android/lib6/gmm6/l/w;Lcom/google/maps/api/android/lib6/gmm6/l/ad;Lcom/google/maps/api/android/lib6/gmm6/l/ac;Lcom/google/maps/api/android/lib6/gmm6/l/w;Lcom/google/maps/api/android/lib6/gmm6/l/ct;)V

    return-object v0

    :cond_4
    move-object v8, v0

    goto :goto_5

    :cond_5
    move-object v7, v0

    goto :goto_4

    :cond_6
    move-object v6, v0

    goto :goto_3

    :cond_7
    move-object v5, v0

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;[ILjava/lang/StringBuilder;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, p1, v2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->e:[I

    aget v0, v0, p1

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/w;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/w;

    array-length v0, v0

    goto :goto_0
.end method

.method public final b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/w;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->e:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->e:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->d:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->d:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->d:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/x;->d:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->e:[I

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/x;->e:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->c:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/x;->c:I

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/w;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/x;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/w;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->h:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/x;->h:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->h:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/x;->h:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ac;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->g:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/x;->g:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->g:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/x;->g:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->d:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->d:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->d:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->e:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/w;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->h:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->g:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->h:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ac;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->g:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ad;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final i()Lcom/google/maps/api/android/lib6/gmm6/l/ad;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->g:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    return-object v0
.end method

.method public final j()Lcom/google/maps/api/android/lib6/gmm6/l/ac;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->h:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    return-object v0
.end method

.method public final k()Lcom/google/maps/api/android/lib6/gmm6/l/w;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    return-object v0
.end method

.method public final l()Lcom/google/maps/api/android/lib6/gmm6/l/ct;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->j:Lcom/google/maps/api/android/lib6/gmm6/l/ct;

    return-object v0
.end method

.method public final m()I
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->e:[I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/w;

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/w;

    array-length v6, v5

    move v3, v1

    move v2, v1

    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v4, v5, v3

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->h()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->e:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    move v2, v1

    :cond_2
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    if-nez v3, :cond_3

    :goto_2
    add-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0

    :cond_3
    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->h()I

    move-result v1

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Style{id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "fillColors"

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->e:[I

    invoke-static {v0, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->a(Ljava/lang/String;[ILjava/lang/StringBuilder;)V

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", components="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", strokes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/w;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textStyle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->g:Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textBoxStyle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->h:Lcom/google/maps/api/android/lib6/gmm6/l/ac;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", arrowStyle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i:Lcom/google/maps/api/android/lib6/gmm6/l/w;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", icon="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->j:Lcom/google/maps/api/android/lib6/gmm6/l/ct;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/x;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/w;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
