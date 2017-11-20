.class final enum Lcom/google/c/h/n;
.super Lcom/google/c/h/l;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/c/h/l;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/google/c/h/f;

    iget-object v0, p1, Lcom/google/c/h/f;->a:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/c/h/f;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method
