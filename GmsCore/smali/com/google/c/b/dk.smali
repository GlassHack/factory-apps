.class final Lcom/google/c/b/dk;
.super Lcom/google/c/b/dj;


# direct methods
.method constructor <init>(Lcom/google/c/b/ch;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/c/b/dj;-><init>(Lcom/google/c/b/ch;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/b/dk;->a()Lcom/google/c/b/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/ct;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
