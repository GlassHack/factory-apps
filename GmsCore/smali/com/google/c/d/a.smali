.class public final Lcom/google/c/d/a;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/c/b/by;->a()Lcom/google/c/b/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/by;->h()Lcom/google/c/b/by;

    move-result-object v0

    new-instance v1, Lcom/google/c/d/b;

    invoke-direct {v1}, Lcom/google/c/d/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/c/b/by;->a(Lcom/google/c/b/ce;)Lcom/google/c/a/bz;

    return-void
.end method
