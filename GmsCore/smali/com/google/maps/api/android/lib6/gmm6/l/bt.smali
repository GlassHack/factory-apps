.class public Lcom/google/maps/api/android/lib6/gmm6/l/bt;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/google/maps/api/android/lib6/a/a/a;

.field protected final b:Lcom/google/maps/api/android/lib6/gmm6/l/cp;

.field protected final c:I

.field protected final d:I


# direct methods
.method protected constructor <init>(Lcom/google/maps/api/android/lib6/a/a/a;Lcom/google/maps/api/android/lib6/gmm6/l/cp;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bt;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bt;->b:Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bt;->c:I

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/bt;->d:I

    return-void
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;)Lcom/google/maps/api/android/lib6/gmm6/l/bt;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/aj;->a:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;)Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bv;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bv;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/cp;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bx;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bx;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;)Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v3

    invoke-static {v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v0

    :cond_2
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/bu;

    invoke-direct {v1, v3, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bu;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/cp;II)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-static {v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/a/a/a;->b(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/a/a/c;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/bw;

    invoke-direct {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bw;-><init>(Lcom/google/maps/api/android/lib6/a/a/a;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/google/maps/api/android/lib6/a/a/a;->a(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/a/a/b;

    move-result-object v0

    goto :goto_1
.end method
