.class public abstract Landroid/support/v4/view/as;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static b()V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method destroyItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract c()Z
.end method
