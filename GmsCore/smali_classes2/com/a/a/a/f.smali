.class public final Lcom/a/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 123
    if-nez p0, :cond_0

    .line 125
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Parameter must not be null"

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 127
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Parameter must not be null or empty"

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 131
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 53
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Empty property name"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 57
    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 67
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Empty schema namespace URI"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 71
    :cond_1
    return-void
.end method
