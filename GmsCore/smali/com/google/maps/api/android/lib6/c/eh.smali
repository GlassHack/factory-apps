.class public final Lcom/google/maps/api/android/lib6/c/eh;
.super Lcom/google/android/gms/maps/model/a/k;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/c/el;

.field private final b:Lcom/google/maps/api/android/lib6/c/ei;

.field private final c:Lcom/google/maps/api/android/lib6/c/bu;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/c/el;Lcom/google/maps/api/android/lib6/c/ei;Lcom/google/maps/api/android/lib6/c/bu;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/a/k;-><init>()V

    invoke-interface {p2}, Lcom/google/maps/api/android/lib6/c/ei;->a()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v0

    const-string v1, "Building must have an id"

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/eh;->a:Lcom/google/maps/api/android/lib6/c/el;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/eh;->b:Lcom/google/maps/api/android/lib6/c/ei;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/c/eh;->c:Lcom/google/maps/api/android/lib6/c/bu;

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/eh;->b:Lcom/google/maps/api/android/lib6/c/ei;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ei;->a()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/a/a/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/eh;->c:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->bx:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/eh;->a:Lcom/google/maps/api/android/lib6/c/el;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/eh;->b:Lcom/google/maps/api/android/lib6/c/ei;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/el;->a(Lcom/google/maps/api/android/lib6/c/ei;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/gms/maps/model/a/j;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/c/eh;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/eh;->c:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->bz:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/eh;->a:Lcom/google/maps/api/android/lib6/c/el;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/eh;->b:Lcom/google/maps/api/android/lib6/c/ei;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/el;->b(Lcom/google/maps/api/android/lib6/c/ei;)I

    move-result v0

    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/eh;->b:Lcom/google/maps/api/android/lib6/c/ei;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ei;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/c/c/fx;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ek;

    new-instance v3, Lcom/google/maps/api/android/lib6/c/ej;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/c/eh;->a:Lcom/google/maps/api/android/lib6/c/el;

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/c/eh;->c:Lcom/google/maps/api/android/lib6/c/bu;

    invoke-direct {v3, v4, v0, v5}, Lcom/google/maps/api/android/lib6/c/ej;-><init>(Lcom/google/maps/api/android/lib6/c/el;Lcom/google/maps/api/android/lib6/c/ek;Lcom/google/maps/api/android/lib6/c/bu;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/eh;->c:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->bA:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/eh;->a:Lcom/google/maps/api/android/lib6/c/el;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/eh;->b:Lcom/google/maps/api/android/lib6/c/ei;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/el;->c(Lcom/google/maps/api/android/lib6/c/ei;)Z

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/eh;->hashCode()I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/maps/api/android/lib6/c/eh;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/maps/api/android/lib6/c/eh;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/eh;->b:Lcom/google/maps/api/android/lib6/c/ei;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ei;->a()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v0

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/c/eh;->b:Lcom/google/maps/api/android/lib6/c/ei;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/c/ei;->a()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/a/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/eh;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "id"

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/eh;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "number of level: "

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/eh;->b:Lcom/google/maps/api/android/lib6/c/ei;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/c/ei;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;I)Lcom/google/c/a/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/a/cf;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
