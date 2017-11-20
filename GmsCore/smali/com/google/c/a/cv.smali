.class final Lcom/google/c/a/cv;
.super Lcom/google/c/a/cx;


# instance fields
.field private synthetic c:Lcom/google/c/a/cu;


# direct methods
.method constructor <init>(Lcom/google/c/a/cu;Lcom/google/c/a/ct;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/a/cv;->c:Lcom/google/c/a/cu;

    invoke-direct {p0, p2, p3}, Lcom/google/c/a/cx;-><init>(Lcom/google/c/a/ct;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/c/a/cv;->c:Lcom/google/c/a/cu;

    iget v0, v0, Lcom/google/c/a/cu;->a:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/google/c/a/cv;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final b(I)I
    .locals 0

    return p1
.end method
