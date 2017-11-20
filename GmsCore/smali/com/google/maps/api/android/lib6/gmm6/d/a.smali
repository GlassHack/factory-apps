.class public final Lcom/google/maps/api/android/lib6/gmm6/d/a;
.super Ljava/lang/Object;


# instance fields
.field private volatile a:Z


# direct methods
.method public constructor <init>(Lcom/google/g/a/b/b/f;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/d/a;->a:Z

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/d/a;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/d/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
