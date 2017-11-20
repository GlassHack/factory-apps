.class public abstract Landroid/support/v7/widget/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z


# virtual methods
.method public abstract a()Landroid/support/v7/widget/bx;
.end method

.method public final a(Landroid/support/v7/widget/bx;I)V
    .locals 2

    .prologue
    .line 3923
    iput p2, p1, Landroid/support/v7/widget/bx;->b:I

    .line 3924
    iget-boolean v0, p0, Landroid/support/v7/widget/bd;->a:Z

    if-eqz v0, :cond_0

    .line 3925
    const-wide/16 v0, -0x1

    iput-wide v0, p1, Landroid/support/v7/widget/bx;->d:J

    .line 3927
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/bx;->a(II)V

    .line 3930
    return-void
.end method

.method public abstract b()I
.end method
