.class final Lcom/google/c/c/fv;
.super Lcom/google/c/c/gp;


# instance fields
.field private synthetic b:Ljava/util/Iterator;

.field private synthetic c:Lcom/google/c/a/ck;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/c/a/ck;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/fv;->b:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/google/c/c/fv;->c:Lcom/google/c/a/ck;

    invoke-direct {p0}, Lcom/google/c/c/gp;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 2

    :cond_0
    iget-object v0, p0, Lcom/google/c/c/fv;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/c/c/fv;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/c/fv;->c:Lcom/google/c/a/ck;

    invoke-interface {v1, v0}, Lcom/google/c/a/ck;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/c/c/gr;->c:Lcom/google/c/c/gr;

    iput-object v0, p0, Lcom/google/c/c/gp;->a:Lcom/google/c/c/gr;

    const/4 v0, 0x0

    goto :goto_0
.end method
