.class final Lcom/google/c/h/i;
.super Lcom/google/c/h/h;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/c/h/h;-><init>(B)V

    return-void
.end method


# virtual methods
.method final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    check-cast p1, Lcom/google/c/h/f;

    invoke-virtual {p1}, Lcom/google/c/h/f;->b()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method final synthetic c(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    check-cast p1, Lcom/google/c/h/f;

    invoke-virtual {p1}, Lcom/google/c/h/f;->d()Lcom/google/c/c/eo;

    move-result-object v0

    return-object v0
.end method

.method final synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/c/h/f;

    invoke-virtual {p1}, Lcom/google/c/h/f;->c()Lcom/google/c/h/f;

    move-result-object v0

    return-object v0
.end method
