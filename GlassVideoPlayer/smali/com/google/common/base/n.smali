.class final Lcom/google/common/base/n;
.super Lcom/google/common/base/q;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/google/common/base/q;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 265
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 266
    invoke-static {p2, v0}, Lcom/google/common/base/ah;->b(II)I

    .line 267
    if-ne p2, v0, :cond_0

    const/4 p2, -0x1

    :cond_0
    return p2
.end method

.method public final a(Lcom/google/common/base/c;)Lcom/google/common/base/c;
    .locals 0

    .prologue
    .line 331
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 260
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(C)Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public final c(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v0, ""

    return-object v0
.end method
