.class final Lcom/google/c/a/o;
.super Lcom/google/c/a/e;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/google/c/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 228
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 229
    invoke-static {p2, v0}, Lcom/google/c/a/ah;->a(II)I

    .line 230
    if-ne p2, v0, :cond_0

    const/4 p2, -0x1

    :cond_0
    return p2
.end method

.method public final a()Lcom/google/c/a/e;
    .locals 0

    .prologue
    .line 292
    return-object p0
.end method

.method public final a(Lcom/google/c/a/e;)Lcom/google/c/a/e;
    .locals 0

    .prologue
    .line 283
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-object p0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 218
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/c/a/e;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final b(C)Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method
