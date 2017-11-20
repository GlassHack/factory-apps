.class final Lcom/google/c/h/c;
.super Lcom/google/c/h/b;


# instance fields
.field private synthetic b:Ljava/lang/reflect/TypeVariable;

.field private synthetic c:Lcom/google/c/h/b;


# direct methods
.method constructor <init>(Lcom/google/c/c/es;Ljava/lang/reflect/TypeVariable;Lcom/google/c/h/b;)V
    .locals 1

    iput-object p2, p0, Lcom/google/c/h/c;->b:Ljava/lang/reflect/TypeVariable;

    iput-object p3, p0, Lcom/google/c/h/c;->c:Lcom/google/c/h/b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/c/h/b;-><init>(Lcom/google/c/c/es;B)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/reflect/TypeVariable;Lcom/google/c/h/b;)Ljava/lang/reflect/Type;
    .locals 2

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/h/c;->b:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/c/h/c;->c:Lcom/google/c/h/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/c/h/b;->a(Ljava/lang/reflect/TypeVariable;Lcom/google/c/h/b;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0
.end method
