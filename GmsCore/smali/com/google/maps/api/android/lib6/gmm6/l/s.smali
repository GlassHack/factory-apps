.class public final Lcom/google/maps/api/android/lib6/gmm6/l/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/l/cp;


# instance fields
.field public final a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

.field public final b:[Lcom/google/maps/api/android/lib6/gmm6/l/db;

.field public final c:Lcom/google/maps/api/android/lib6/gmm6/l/x;

.field public final d:I

.field private final e:Lcom/google/maps/api/android/lib6/a/a/a;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private final i:[I


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/a/a/a;Lcom/google/maps/api/android/lib6/gmm6/l/l;[Lcom/google/maps/api/android/lib6/gmm6/l/db;Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;III[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->e:Lcom/google/maps/api/android/lib6/a/a/a;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    new-array p3, v0, [Lcom/google/maps/api/android/lib6/gmm6/l/db;

    :cond_0
    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->b:[Lcom/google/maps/api/android/lib6/gmm6/l/db;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->c:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iput-object p5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->f:Ljava/lang/String;

    iput p6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->g:I

    iput p7, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->h:I

    iput p8, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->d:I

    iput-object p9, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->i:[I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->e:Lcom/google/maps/api/android/lib6/a/a/a;

    return-object v0
.end method

.method public final c()Lcom/google/maps/api/android/lib6/gmm6/l/x;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->c:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->h:I

    return v0
.end method

.method public final e()[I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->i:[I

    return-object v0
.end method

.method public final f()I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->i()I

    move-result v1

    add-int/lit8 v3, v1, 0x3c

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->b:[Lcom/google/maps/api/android/lib6/gmm6/l/db;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->b:[Lcom/google/maps/api/android/lib6/gmm6/l/db;

    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v2, v4, v1

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/db;->d()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->e:Lcom/google/maps/api/android/lib6/a/a/a;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Lcom/google/maps/api/android/lib6/a/a/a;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->c:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/x;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->b:[Lcom/google/maps/api/android/lib6/gmm6/l/db;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->b:[Lcom/google/maps/api/android/lib6/gmm6/l/db;

    array-length v0, v0

    goto :goto_0
.end method

.method public final h()Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->d:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->c:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/s;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/s;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->d:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->g:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->d:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->d:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/s;->d:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
