.class final Lcom/google/c/c/gk;
.super Lcom/google/c/c/gm;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final a:Lcom/google/c/c/gk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/c/c/gk;

    invoke-direct {v0}, Lcom/google/c/c/gk;-><init>()V

    sput-object v0, Lcom/google/c/c/gk;->a:Lcom/google/c/c/gk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/c/gm;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/c/c/gm;
    .locals 1

    sget-object v0, Lcom/google/c/c/gy;->a:Lcom/google/c/c/gy;

    return-object v0
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Ordering.natural()"

    return-object v0
.end method
