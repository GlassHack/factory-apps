.class public final Lcom/google/maps/api/android/lib6/gmm6/m/a/c;
.super Lcom/google/maps/api/android/lib6/b/b;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/a/a/d;

.field private final b:Ljava/util/List;

.field private c:Lcom/google/g/a/b/b/f;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/a/a/d;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/b;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->b:Ljava/util/List;

    return-void
.end method

.method private n()I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->c:Lcom/google/g/a/b/b/f;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->c:Lcom/google/g/a/b/b/f;

    invoke-virtual {v1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/cv;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->n()I

    move-result v0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/a/b;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-interface {v0, v3, v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/a/b;->a(Lcom/google/maps/api/android/lib6/a/a/d;ILcom/google/maps/api/android/lib6/gmm6/l/cv;)V

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/m/a/b;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 3

    new-instance v0, Lcom/google/g/a/b/b/f;

    sget-object v1, Lcom/google/n/c/a/a/s;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/a/a/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    invoke-static {p1, v0}, Lcom/google/g/a/b/b/j;->a(Ljava/io/DataOutput;Lcom/google/g/a/b/b/f;)V

    return-void
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 1

    sget-object v0, Lcom/google/n/c/a/a/s;->b:Lcom/google/g/a/b/b/h;

    invoke-static {v0, p1}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/h;Ljava/io/DataInput;)Lcom/google/g/a/b/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->c:Lcom/google/g/a/b/b/f;

    const/4 v0, 0x1

    return v0
.end method

.method public final h()I
    .locals 1

    const/16 v0, 0x76

    return v0
.end method

.method public final i()Lcom/google/maps/api/android/lib6/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    return-object v0
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->d:Z

    return-void
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->d:Z

    return v0
.end method

.method public final l()Lcom/google/g/a/b/b/f;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->c:Lcom/google/g/a/b/b/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->c:Lcom/google/g/a/b/b/f;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v0

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/a/c;->n()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
