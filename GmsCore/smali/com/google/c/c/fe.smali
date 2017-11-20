.class public final Lcom/google/c/c/fe;
.super Lcom/google/c/c/ix;


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/c/c/fe;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/c/c/ix;-><init>()V

    const-string v0, "capacity must be >= 0 but was %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v4, v0, v1}, Lcom/google/c/a/cj;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v5, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/c/c/fe;->a:[Ljava/lang/Object;

    iput v3, p0, Lcom/google/c/c/fe;->b:I

    return-void
.end method

.method private a(I)Lcom/google/c/c/fe;
    .locals 2

    iget-object v0, p0, Lcom/google/c/c/fe;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/c/c/fe;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/c/c/fe;->a:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v1, p1}, Lcom/google/c/c/fe;->a(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/c/c/gl;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/fe;->a:[Ljava/lang/Object;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/c/c/fc;
    .locals 2

    iget v0, p0, Lcom/google/c/c/fe;->b:I

    iget-object v1, p0, Lcom/google/c/c/fe;->a:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/c/c/fc;->a(I[Ljava/lang/Object;)Lcom/google/c/c/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/fc;->size()I

    move-result v1

    iput v1, p0, Lcom/google/c/c/fe;->b:I

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Lcom/google/c/c/fe;
    .locals 3

    iget v0, p0, Lcom/google/c/c/fe;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/c/c/fe;->a(I)Lcom/google/c/c/fe;

    iget-object v0, p0, Lcom/google/c/c/fe;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/c/c/fe;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/c/c/fe;->b:I

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    return-object p0
.end method

.method public final synthetic a(Ljava/lang/Iterable;)Lcom/google/c/c/ix;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/c/c/fe;->b(Ljava/lang/Iterable;)Lcom/google/c/c/fe;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/util/Iterator;)Lcom/google/c/c/ix;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/c/c/ix;->a(Ljava/util/Iterator;)Lcom/google/c/c/ix;

    return-object p0
.end method

.method public final b(Ljava/lang/Iterable;)Lcom/google/c/c/fe;
    .locals 2

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    iget v1, p0, Lcom/google/c/c/fe;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/c/c/fe;->a(I)Lcom/google/c/c/fe;

    :cond_0
    invoke-super {p0, p1}, Lcom/google/c/c/ix;->a(Ljava/lang/Iterable;)Lcom/google/c/c/ix;

    return-object p0
.end method

.method public final b(Ljava/util/Iterator;)Lcom/google/c/c/fe;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/c/c/ix;->a(Ljava/util/Iterator;)Lcom/google/c/c/ix;

    return-object p0
.end method

.method public final synthetic b(Ljava/lang/Object;)Lcom/google/c/c/ix;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/c/c/fe;->a(Ljava/lang/Object;)Lcom/google/c/c/fe;

    move-result-object v0

    return-object v0
.end method
