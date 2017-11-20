.class final Lcom/google/c/a/ch;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/c/a/ci;

    invoke-direct {v0}, Lcom/google/c/a/ci;-><init>()V

    return-void
.end method

.method static a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
