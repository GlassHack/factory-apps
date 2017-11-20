.class public final Lcom/google/maps/api/android/lib6/gmm6/l/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/l/cp;


# instance fields
.field public final a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

.field public final b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

.field public final c:I

.field public final d:I

.field private final e:Ljava/lang/String;

.field private final f:[I


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/l;Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;II[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bm;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bm;->b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bm;->e:Ljava/lang/String;

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bm;->d:I

    iput p5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bm;->c:I

    iput-object p6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bm;->f:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;Lcom/google/maps/api/android/lib6/gmm6/l/r;)Lcom/google/maps/api/android/lib6/gmm6/l/cp;
    .locals 8

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/aj;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-static {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;)Lcom/google/maps/api/android/lib6/gmm6/l/aa;

    move-result-object v3

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v4

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v5

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v2

    new-array v6, v2, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v7

    aput v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bm;

    iget v2, p2, Lcom/google/maps/api/android/lib6/gmm6/l/r;->a:I

    iget-object v2, v3, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iget v7, v3, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->c:I

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->b:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/l/bm;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/l;Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;II[I)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/a/a/a;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/a/a/a;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    return-object v0
.end method

.method public final c()Lcom/google/maps/api/android/lib6/gmm6/l/x;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bm;->b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    return-object v0
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()[I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bm;->f:[I

    return-object v0
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bm;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->i()I

    move-result v0

    add-int/lit8 v0, v0, 0x2c

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bm;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bm;->b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/x;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
