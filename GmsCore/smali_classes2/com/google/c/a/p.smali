.class final Lcom/google/c/a/p;
.super Lcom/google/c/a/e;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/google/c/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 309
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 310
    invoke-static {p2, v0}, Lcom/google/c/a/ah;->a(II)I

    .line 311
    const/4 v0, -0x1

    return v0
.end method

.method public final a()Lcom/google/c/a/e;
    .locals 0

    .prologue
    .line 370
    return-object p0
.end method

.method public final a(Lcom/google/c/a/e;)Lcom/google/c/a/e;
    .locals 1

    .prologue
    .line 360
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/e;

    return-object v0
.end method

.method final a(Lcom/google/c/a/r;)V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 298
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/c/a/e;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final b(C)Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method
