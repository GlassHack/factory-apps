.class public final Lcom/google/maps/api/android/lib6/gmm6/l/cu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/l/ae;


# instance fields
.field public final a:[B

.field public b:[Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Ljava/util/List;

.field public e:I

.field private final f:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

.field private final g:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field private final h:I


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;I[BLcom/google/maps/api/android/lib6/gmm6/l/av;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->e:I

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->f:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->g:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->h:I

    if-eqz p3, :cond_2

    array-length v0, p3

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/k/b;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/k/b;-><init>()V

    invoke-virtual {v0, p3}, Lcom/google/maps/api/android/lib6/gmm6/k/b;->a([B)[B

    move-result-object p3

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/ad;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/k/b;->a()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->b:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/k/b;->b()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->c:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/k/b;->c()I

    move-result v1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->e:I

    :cond_0
    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->x:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-ne p4, v1, :cond_1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/k/b;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->d:Ljava/util/List;

    :cond_1
    aget-byte v0, p3, v2

    const/16 v1, 0x43

    if-ne v0, v1, :cond_2

    :try_start_0
    invoke-static {p3}, Lcom/google/maps/api/android/lib6/gmm6/e/a/a/a/c;->a([B)[B
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->b:[Ljava/lang/String;

    if-nez v0, :cond_3

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->b:[Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->c:[Ljava/lang/String;

    if-nez v0, :cond_4

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->c:[Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->d:Ljava/util/List;

    if-nez v0, :cond_5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->d:Ljava/util/List;

    :cond_5
    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->a:[B

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Input image is not Compact JPEG"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/ah;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->f:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    return-object v0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/gmm6/l/av;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->g:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;->h:I

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
