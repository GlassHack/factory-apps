.class final enum Lcom/google/c/h/z;
.super Lcom/google/c/h/x;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/c/h/x;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    new-instance v0, Lcom/google/c/h/w;

    invoke-direct {v0, p1}, Lcom/google/c/h/w;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method final b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 2

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/google/c/h/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/c/h/w;-><init>(Ljava/lang/reflect/Type;)V

    :cond_0
    return-object p1
.end method
