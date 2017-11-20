.class public final Lcom/google/h/a/b/b/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/h/a/b/b/q;

.field final b:Lcom/google/h/a/b/b/q;

.field final c:Lcom/google/h/a/b/b/q;

.field final d:[F

.field e:[F

.field f:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x32

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/google/h/a/b/b/q;

    invoke-direct {v0, v1}, Lcom/google/h/a/b/b/q;-><init>(I)V

    iput-object v0, p0, Lcom/google/h/a/b/b/aq;->a:Lcom/google/h/a/b/b/q;

    .line 12
    new-instance v0, Lcom/google/h/a/b/b/q;

    invoke-direct {v0, v1}, Lcom/google/h/a/b/b/q;-><init>(I)V

    iput-object v0, p0, Lcom/google/h/a/b/b/aq;->b:Lcom/google/h/a/b/b/q;

    .line 13
    new-instance v0, Lcom/google/h/a/b/b/q;

    invoke-direct {v0, v1}, Lcom/google/h/a/b/b/q;-><init>(I)V

    iput-object v0, p0, Lcom/google/h/a/b/b/aq;->c:Lcom/google/h/a/b/b/q;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/h/a/b/b/aq;->d:[F

    return-void
.end method
