.class public final Lcom/google/maps/api/android/lib6/gmm6/l/cj;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/maps/api/android/lib6/gmm6/l/q;

.field private b:I

.field private c:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private d:Z

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->f:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)V

    return-void
.end method

.method private a(ILcom/google/maps/api/android/lib6/gmm6/l/h;IZ)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->b:I

    if-ne p1, v0, :cond_4

    if-eqz p4, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->g:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/n;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/n;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/ck;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ck;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->g:I

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->e:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/n;

    invoke-virtual {v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->f:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ck;

    iget v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ck;->b:I

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ck;->a:[I

    array-length v2, v2

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ck;->a:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ck;->a:[I

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ck;->a:[I

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ck;->a:[I

    :cond_2
    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ck;->a:[I

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ck;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ck;->b:I

    aput p3, v1, v2

    :cond_3
    :goto_0
    return-void

    :cond_4
    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->a:Lcom/google/maps/api/android/lib6/gmm6/l/q;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/q;->h()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->a:Lcom/google/maps/api/android/lib6/gmm6/l/q;

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/q;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)I

    move-result v2

    if-ltz v2, :cond_8

    if-nez p4, :cond_5

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->c:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v2, v2, p1

    invoke-static {v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)I

    move-result v2

    if-gez v2, :cond_5

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->c:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v3, v3, p1

    invoke-static {v1, v0, p2, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, p3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;IZ)V

    :cond_5
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;IZ)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->c:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->a:Lcom/google/maps/api/android/lib6/gmm6/l/q;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/q;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->a:Lcom/google/maps/api/android/lib6/gmm6/l/q;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/q;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    goto :goto_1

    :cond_8
    if-nez p4, :cond_6

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->c:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v2, v2, p1

    invoke-static {v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)I

    move-result v2

    if-ltz v2, :cond_6

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->c:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aget-object v3, v3, p1

    invoke-static {v1, v0, v3, p2, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, v2, p3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;IZ)V

    goto :goto_2
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)V
    .locals 3

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->a:Lcom/google/maps/api/android/lib6/gmm6/l/q;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/q;->b()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->b:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->b:I

    new-array v0, v0, [Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->c:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->c:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->c:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/l;Ljava/util/List;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->g:I

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->d:Z

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->a:Lcom/google/maps/api/android/lib6/gmm6/l/q;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/q;->a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->a:Lcom/google/maps/api/android/lib6/gmm6/l/q;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/q;->b(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->d:Z

    if-eqz v0, :cond_0

    invoke-interface {v7, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v5

    invoke-virtual {p1, v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->d:Z

    if-eqz v0, :cond_2

    aget v0, v7, v1

    :goto_0
    invoke-direct {p0, v1, v4, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;IZ)V

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_4

    invoke-virtual {p1, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->d:Z

    if-eqz v0, :cond_3

    aget v0, v7, v2

    :goto_2
    invoke-direct {p0, v1, v4, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;IZ)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_3
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->g:I

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a()I

    move-result v4

    if-le v4, v3, :cond_5

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->d()Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->c()V

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->d:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ck;

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ck;->b:I

    if-le v4, v3, :cond_6

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ck;->b:I

    new-array v4, v4, [I

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ck;->a:[I

    iget v6, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ck;->b:I

    invoke-static {v5, v1, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iput v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ck;->b:I

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3
.end method
