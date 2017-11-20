.class public final Lcom/google/maps/api/android/lib6/gmm6/l/ci;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/l/cp;


# static fields
.field private static final l:[B

.field private static final m:[I


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/a/a/a;

.field private final b:Lcom/google/maps/api/android/lib6/gmm6/l/bp;

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/l/bp;

.field private final d:[B

.field private final e:Lcom/google/maps/api/android/lib6/gmm6/l/x;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->l:[B

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->m:[I

    return-void

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x4t
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x1
        0x2
        0x2
        0x3
    .end array-data
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/a/a/a;Lcom/google/maps/api/android/lib6/gmm6/l/bp;Lcom/google/maps/api/android/lib6/gmm6/l/bp;[BIILcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;II[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->b:Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->c:Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->d:[B

    iput p5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->g:I

    iput p6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->h:I

    iput-object p7, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->e:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iput-object p8, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->f:Ljava/lang/String;

    iput p9, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->i:I

    iput p10, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->j:I

    iput-object p11, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->k:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;Lcom/google/maps/api/android/lib6/gmm6/l/r;)Lcom/google/maps/api/android/lib6/gmm6/l/ci;
    .locals 13

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/aj;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-static {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    move-result-object v2

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v1

    rem-int/lit8 v0, v1, 0x3

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Malformed TriangleList, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vertices"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    mul-int/lit8 v0, v1, 0x3

    new-array v4, v0, [I

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/aj;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move v0, v7

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-static {p0, v3, v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/ah;[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v1

    new-array v5, v1, [I

    move v0, v7

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v3

    aput v3, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    invoke-direct {v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;-><init>([I[I)V

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v8

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a()I

    move-result v0

    :goto_3
    new-array v4, v0, [B

    invoke-interface {p0, v4}, Ljava/io/DataInput;->readFully([B)V

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v5

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v6

    invoke-static {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;)Lcom/google/maps/api/android/lib6/gmm6/l/aa;

    move-result-object v12

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v9

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v10

    const/4 v1, 0x0

    invoke-static {v8, v10}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/a/a/a;->a(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/a/a/b;

    move-result-object v1

    :cond_3
    :goto_4
    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v8

    new-array v11, v8, [I

    move v0, v7

    :goto_5
    if-ge v0, v8, :cond_7

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v7

    aput v7, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    move v0, v7

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a()I

    move-result v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x2

    invoke-static {v0, v10}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/a/a/a;->b(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/a/a/c;

    move-result-object v1

    goto :goto_4

    :cond_7
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;

    iget v7, p2, Lcom/google/maps/api/android/lib6/gmm6/l/r;->a:I

    iget-object v7, v12, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iget v8, v12, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->c:I

    iget-object v8, v12, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->b:Ljava/lang/String;

    invoke-direct/range {v0 .. v11}, Lcom/google/maps/api/android/lib6/gmm6/l/ci;-><init>(Lcom/google/maps/api/android/lib6/a/a/a;Lcom/google/maps/api/android/lib6/gmm6/l/bp;Lcom/google/maps/api/android/lib6/gmm6/l/bp;[BIILcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;II[I)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final a(II)Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->d:[B

    aget-byte v0, v0, p1

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->l:[B

    aget-byte v1, v1, p2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    return-object v0
.end method

.method public final c()Lcom/google/maps/api/android/lib6/gmm6/l/x;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->e:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->i:I

    return v0
.end method

.method public final e()[I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->k:[I

    return-object v0
.end method

.method public final f()I
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->b:Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x44

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->d:[B

    array-length v1, v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->c:Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Lcom/google/maps/api/android/lib6/a/a/a;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->e:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/x;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->c:Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->b()I

    move-result v0

    goto :goto_0
.end method

.method public final g()Lcom/google/maps/api/android/lib6/gmm6/l/bp;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->b:Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    return-object v0
.end method

.method public final h()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->d:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->m:[I

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->d:[B

    aget-byte v3, v3, v0

    and-int/lit8 v3, v3, 0x7

    aget v2, v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final i()Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->j:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->g:I

    return v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->h:I

    return v0
.end method
