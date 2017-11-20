.class public final Lcom/google/c/h/o;
.super Lcom/google/c/c/ir;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private transient a:Lcom/google/c/c/fc;

.field private synthetic b:Lcom/google/c/h/f;


# direct methods
.method constructor <init>(Lcom/google/c/h/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/h/o;->b:Lcom/google/c/h/f;

    invoke-direct {p0}, Lcom/google/c/c/ir;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/h/o;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/h/o;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/google/c/h/o;->a:Lcom/google/c/c/fc;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/c/h/h;->a:Lcom/google/c/h/h;

    iget-object v1, p0, Lcom/google/c/h/o;->b:Lcom/google/c/h/f;

    invoke-virtual {v0, v1}, Lcom/google/c/h/h;->a(Ljava/lang/Object;)Lcom/google/c/c/eo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/in;->a(Ljava/lang/Iterable;)Lcom/google/c/c/in;

    move-result-object v0

    sget-object v1, Lcom/google/c/h/l;->a:Lcom/google/c/h/l;

    iget-object v0, v0, Lcom/google/c/c/in;->a:Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lcom/google/c/c/fm;->a(Ljava/lang/Iterable;Lcom/google/c/a/ck;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/in;->a(Ljava/lang/Iterable;)Lcom/google/c/c/in;

    move-result-object v0

    iget-object v0, v0, Lcom/google/c/c/in;->a:Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/c/c/fc;->a(Ljava/lang/Iterable;)Lcom/google/c/c/fc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/h/o;->a:Lcom/google/c/c/fc;

    :cond_0
    return-object v0
.end method

.method public final d()Ljava/util/Set;
    .locals 2

    sget-object v0, Lcom/google/c/h/h;->b:Lcom/google/c/h/h;

    iget-object v1, p0, Lcom/google/c/h/o;->b:Lcom/google/c/h/f;

    iget-object v1, v1, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/google/c/h/f;->b(Ljava/lang/reflect/Type;)Lcom/google/c/c/fc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/h/h;->a(Ljava/lang/Iterable;)Lcom/google/c/c/eo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/fc;->a(Ljava/util/Collection;)Lcom/google/c/c/fc;

    move-result-object v0

    return-object v0
.end method
