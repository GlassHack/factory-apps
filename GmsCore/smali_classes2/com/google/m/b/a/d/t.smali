.class public final Lcom/google/m/b/a/d/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/m/b/a/d/u;

.field public final b:[B


# direct methods
.method public constructor <init>(Lcom/google/m/b/a/d/u;[B)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 78
    :cond_1
    iput-object p1, p0, Lcom/google/m/b/a/d/t;->a:Lcom/google/m/b/a/d/u;

    .line 79
    iput-object p2, p0, Lcom/google/m/b/a/d/t;->b:[B

    .line 80
    return-void
.end method
