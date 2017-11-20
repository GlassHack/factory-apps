.class final Lcom/google/c/a/cb;
.super Lcom/google/c/a/ca;


# instance fields
.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/google/c/a/ca;


# direct methods
.method constructor <init>(Lcom/google/c/a/ca;Lcom/google/c/a/ca;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/c/a/cb;->c:Lcom/google/c/a/ca;

    iput-object p3, p0, Lcom/google/c/a/cb;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/c/a/ca;-><init>(Lcom/google/c/a/ca;B)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/c/a/cb;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/c/a/cb;->c:Lcom/google/c/a/ca;

    invoke-virtual {v0, p1}, Lcom/google/c/a/ca;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/c/a/ca;
    .locals 2

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
