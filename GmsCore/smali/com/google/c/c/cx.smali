.class final Lcom/google/c/c/cx;
.super Lcom/google/c/c/cz;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final a:Lcom/google/c/c/cx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/c/c/cx;

    invoke-direct {v0}, Lcom/google/c/c/cx;-><init>()V

    sput-object v0, Lcom/google/c/c/cx;->a:Lcom/google/c/c/cx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/c/c/cz;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/c/c/cz;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/c/c/dk;->a:Lcom/google/c/c/dk;

    return-object v0
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

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

    .prologue
    .line 68
    const-string v0, "Ordering.natural()"

    return-object v0
.end method
