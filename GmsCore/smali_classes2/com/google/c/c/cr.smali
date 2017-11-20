.class final Lcom/google/c/c/cr;
.super Lcom/google/c/c/cz;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 953
    invoke-direct {p0}, Lcom/google/c/c/cz;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 953
    check-cast p1, Lcom/google/c/c/cp;

    check-cast p2, Lcom/google/c/c/cp;

    invoke-interface {p2}, Lcom/google/c/c/cp;->b()I

    move-result v0

    invoke-interface {p1}, Lcom/google/c/c/cp;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
