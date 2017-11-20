.class final Lcom/google/common/math/MathPreconditions;
.super Ljava/lang/Object;
.source "MathPreconditions.java"


# direct methods
.method static checkNoOverflow(Z)V
    .locals 2
    .param p0, "condition"    # Z

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    return-void
.end method
