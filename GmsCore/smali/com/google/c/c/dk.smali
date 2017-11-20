.class final Lcom/google/c/c/dk;
.super Lcom/google/c/c/cz;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final a:Lcom/google/c/c/dk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/google/c/c/dk;

    invoke-direct {v0}, Lcom/google/c/c/dk;-><init>()V

    sput-object v0, Lcom/google/c/c/dk;->a:Lcom/google/c/c/dk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/c/c/cz;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/c/c/cz;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/c/c/cx;->a:Lcom/google/c/c/cx;

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    sget-object v0, Lcom/google/c/c/cx;->a:Lcom/google/c/c/cx;

    invoke-virtual {v0, p1, p2}, Lcom/google/c/c/cx;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    sget-object v0, Lcom/google/c/c/cx;->a:Lcom/google/c/c/cx;

    invoke-virtual {v0, p1, p2}, Lcom/google/c/c/cx;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "Ordering.natural().reverse()"

    return-object v0
.end method
