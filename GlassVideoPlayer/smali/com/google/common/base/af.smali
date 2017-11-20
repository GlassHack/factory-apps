.class final Lcom/google/common/base/af;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/google/common/base/ag;

    invoke-direct {v0}, Lcom/google/common/base/ag;-><init>()V

    sput-object v0, Lcom/google/common/base/af;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static a()J
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
