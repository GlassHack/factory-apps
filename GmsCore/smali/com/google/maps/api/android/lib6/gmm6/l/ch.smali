.class public final Lcom/google/maps/api/android/lib6/gmm6/l/ch;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/l/cp;


# instance fields
.field public final a:Lcom/google/maps/api/android/lib6/a/a/a;

.field public final b:Lcom/google/maps/api/android/lib6/gmm6/l/bp;

.field public final c:[B

.field public final d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:I

.field public final i:[I


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/a/a/a;Lcom/google/maps/api/android/lib6/gmm6/l/bp;[BLcom/google/maps/api/android/lib6/gmm6/l/x;ILjava/lang/String;II[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->b:Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->c:[B

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iput p5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->e:I

    iput-object p6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->f:Ljava/lang/String;

    iput p7, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->g:I

    iput p8, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->h:I

    iput-object p9, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->i:[I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    return-object v0
.end method

.method public final c()Lcom/google/maps/api/android/lib6/gmm6/l/x;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->g:I

    return v0
.end method

.method public final e()[I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->i:[I

    return-object v0
.end method

.method public final f()I
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->b:Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->c:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Lcom/google/maps/api/android/lib6/a/a/a;)I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/x;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->c:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ch;->h:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    return v0
.end method
