.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

.field private b:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/o/c/b;

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a;


# direct methods
.method public constructor <init>(ILcom/google/maps/api/android/lib6/gmm6/o/c/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;-><init>(IC)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/b;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a;

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public final a(II)V
    .locals 3

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/b;

    invoke-virtual {v0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->a(ILcom/google/maps/api/android/lib6/gmm6/o/c/b;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/b;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b;->a:I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/b;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b;->b:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(III)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->b()V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->e()V

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->b()V

    return-void
.end method

.method public final c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/c;->b()V

    return-void
.end method
