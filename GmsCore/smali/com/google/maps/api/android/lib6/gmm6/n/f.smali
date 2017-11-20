.class public Lcom/google/maps/api/android/lib6/gmm6/n/f;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public b:Lcom/google/maps/api/android/lib6/gmm6/n/i;

.field public c:Lcom/google/maps/api/android/lib6/gmm6/n/i;

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a:Ljava/util/HashMap;

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->d:I

    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/n/i;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    iput-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/n/i;->a:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    iput-object p1, v0, Lcom/google/maps/api/android/lib6/gmm6/n/i;->b:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    goto :goto_0
.end method

.method private b(Lcom/google/maps/api/android/lib6/gmm6/n/i;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/n/i;->a:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/n/i;->b:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    if-eqz v0, :cond_0

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/n/i;->b:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    :cond_0
    if-eqz v1, :cond_1

    iput-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/n/i;->a:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    :cond_1
    iput-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/n/i;->a:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    iput-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/n/i;->b:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    if-ne v2, p1, :cond_2

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    if-ne v1, p1, :cond_3

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a(I)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/n/i;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/n/i;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final b()Lcom/google/maps/api/android/lib6/gmm6/n/g;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/g;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/g;-><init>(Lcom/google/maps/api/android/lib6/gmm6/n/i;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/n/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/n/i;->d:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/n/i;

    if-nez v0, :cond_0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->d:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a(I)V

    :cond_0
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/n/i;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/n/i;-><init>()V

    iput-object p2, v1, Lcom/google/maps/api/android/lib6/gmm6/n/i;->d:Ljava/lang/Object;

    iput-object p1, v1, Lcom/google/maps/api/android/lib6/gmm6/n/i;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Lcom/google/maps/api/android/lib6/gmm6/n/i;)V

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/n/i;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/n/i;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/n/i;->c:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a(Lcom/google/maps/api/android/lib6/gmm6/n/i;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/n/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Lcom/google/maps/api/android/lib6/gmm6/n/i;)V

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a(Lcom/google/maps/api/android/lib6/gmm6/n/i;)V

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/n/i;->d:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/n/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Lcom/google/maps/api/android/lib6/gmm6/n/i;)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/n/i;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/n/i;->d:Ljava/lang/Object;

    goto :goto_0
.end method
