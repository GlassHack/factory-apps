.class final Lcom/google/common/base/o;
.super Lcom/google/common/base/q;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/google/common/base/q;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 356
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 357
    invoke-static {p2, v0}, Lcom/google/common/base/ah;->b(II)I

    .line 358
    const/4 v0, -0x1

    return v0
.end method

.method public final a(Lcom/google/common/base/c;)Lcom/google/common/base/c;
    .locals 1

    .prologue
    .line 418
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/c;

    return-object v0
.end method

.method public final b(Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 350
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const/4 v0, -0x1

    return v0
.end method

.method public final b(C)Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
