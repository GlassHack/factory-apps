.class public final Lcom/google/googlenav/common/e/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lcom/google/googlenav/common/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not in a unit or feature test"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    return-void
.end method
