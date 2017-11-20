.class final Lcom/google/c/c/jc;
.super Lcom/google/c/c/eu;


# instance fields
.field final synthetic a:Lcom/google/c/c/ja;


# direct methods
.method constructor <init>(Lcom/google/c/c/ja;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/jc;->a:Lcom/google/c/c/ja;

    invoke-direct {p0}, Lcom/google/c/c/eu;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/c/c/hi;
    .locals 1

    new-instance v0, Lcom/google/c/c/jd;

    invoke-direct {v0, p0}, Lcom/google/c/c/jd;-><init>(Lcom/google/c/c/jc;)V

    return-object v0
.end method

.method final c()Lcom/google/c/c/es;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/jc;->a:Lcom/google/c/c/ja;

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/jc;->b()Lcom/google/c/c/hi;

    move-result-object v0

    return-object v0
.end method
