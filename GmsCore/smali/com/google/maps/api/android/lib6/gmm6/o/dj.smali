.class final Lcom/google/maps/api/android/lib6/gmm6/o/dj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/f/i;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/gmm6/f/i;

.field private final b:I

.field private c:Lcom/google/maps/api/android/lib6/gmm6/m/n;

.field private d:Lcom/google/maps/api/android/lib6/gmm6/j/e;

.field private final e:Lcom/google/maps/api/android/lib6/gmm6/j/q;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/f/i;ILcom/google/maps/api/android/lib6/gmm6/j/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dj;->a:Lcom/google/maps/api/android/lib6/gmm6/f/i;

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dj;->b:I

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dj;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/av;ZLcom/google/maps/api/android/lib6/gmm6/l/au;)Lcom/google/maps/api/android/lib6/gmm6/f/f;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/f/f;

    invoke-direct {v0, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/f/f;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/au;)V

    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/av;IZLcom/google/maps/api/android/lib6/gmm6/l/au;)Lcom/google/maps/api/android/lib6/gmm6/f/g;
    .locals 5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dj;->a:Lcom/google/maps/api/android/lib6/gmm6/f/i;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/f/i;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;IZLcom/google/maps/api/android/lib6/gmm6/l/au;)Lcom/google/maps/api/android/lib6/gmm6/f/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dj;->c:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/m/n;->c()Lcom/google/maps/api/android/lib6/gmm6/m/n;

    move-result-object v1

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dj;->c:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dj;->d:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dj;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->j()Lcom/google/maps/api/android/lib6/gmm6/j/e;

    move-result-object v1

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dj;->d:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    :cond_1
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/f/a;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dj;->d:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dj;->c:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dj;->b:I

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dj;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/f/a;-><init>(Lcom/google/maps/api/android/lib6/gmm6/f/g;Lcom/google/maps/api/android/lib6/gmm6/j/e;ILcom/google/maps/api/android/lib6/gmm6/j/q;)V

    return-object v1
.end method
