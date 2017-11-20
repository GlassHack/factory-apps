.class final Lcom/google/android/d/a/i;
.super Lcom/google/android/d/a/d;
.source "SourceFile"


# instance fields
.field final synthetic q:Lcom/google/android/d/a/q;

.field final synthetic r:Lcom/google/android/d/a/d;


# direct methods
.method constructor <init>(Lcom/google/android/d/a/d;Lcom/google/android/d/a/q;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/google/android/d/a/i;->r:Lcom/google/android/d/a/d;

    iput-object p2, p0, Lcom/google/android/d/a/i;->q:Lcom/google/android/d/a/q;

    invoke-direct {p0}, Lcom/google/android/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/d/a/d;
    .locals 0

    .prologue
    .line 670
    return-object p0
.end method

.method public final b(C)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 664
    iget-object v1, p0, Lcom/google/android/d/a/i;->q:Lcom/google/android/d/a/q;

    iget-object v1, v1, Lcom/google/android/d/a/q;->a:[I

    shr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
