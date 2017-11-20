.class public final Lcom/google/common/base/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 159
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/google/common/base/ax;->b(Ljava/lang/Throwable;)V

    .line 160
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 63
    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 66
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 83
    const-class v0, Ljava/lang/Error;

    invoke-static {p0, v0}, Lcom/google/common/base/ax;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 84
    const-class v0, Ljava/lang/RuntimeException;

    invoke-static {p0, v0}, Lcom/google/common/base/ax;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 85
    return-void
.end method

.method public static b(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 108
    invoke-static {p0, p1}, Lcom/google/common/base/ax;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 109
    invoke-static {p0}, Lcom/google/common/base/ax;->b(Ljava/lang/Throwable;)V

    .line 110
    return-void
.end method
