.class final Lcom/google/c/c/er;
.super Lcom/google/c/c/eo;


# instance fields
.field private transient a:I

.field private transient b:I

.field private synthetic c:Lcom/google/c/c/eo;


# direct methods
.method constructor <init>(Lcom/google/c/c/eo;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/er;->c:Lcom/google/c/c/eo;

    invoke-direct {p0}, Lcom/google/c/c/eo;-><init>()V

    iput p2, p0, Lcom/google/c/c/er;->a:I

    iput p3, p0, Lcom/google/c/c/er;->b:I

    return-void
.end method


# virtual methods
.method public final a(II)Lcom/google/c/c/eo;
    .locals 3

    iget v0, p0, Lcom/google/c/c/er;->b:I

    invoke-static {p1, p2, v0}, Lcom/google/c/a/cj;->a(III)V

    iget-object v0, p0, Lcom/google/c/c/er;->c:Lcom/google/c/c/eo;

    iget v1, p0, Lcom/google/c/c/er;->a:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/c/c/er;->a:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/eo;->a(II)Lcom/google/c/c/eo;

    move-result-object v0

    return-object v0
.end method

.method final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/c/c/er;->b:I

    invoke-static {p1, v0}, Lcom/google/c/a/cj;->a(II)I

    iget-object v0, p0, Lcom/google/c/c/er;->c:Lcom/google/c/c/eo;

    iget v1, p0, Lcom/google/c/c/er;->a:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/google/c/c/eo;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-super {p0}, Lcom/google/c/c/eo;->b()Lcom/google/c/c/hi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    invoke-super {p0}, Lcom/google/c/c/eo;->d()Lcom/google/c/c/hj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-super {p0, p1}, Lcom/google/c/c/eo;->a(I)Lcom/google/c/c/hj;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/c/c/er;->b:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/c/c/er;->a(II)Lcom/google/c/c/eo;

    move-result-object v0

    return-object v0
.end method
