.class public final Lcom/google/c/c/cj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/c/c/dm;)Lcom/google/c/c/dm;
    .locals 2

    .prologue
    .line 745
    instance-of v0, p0, Lcom/google/c/c/ei;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/c/c/bp;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Lcom/google/c/c/ei;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/c/c/ei;-><init>(Lcom/google/c/c/dm;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method
