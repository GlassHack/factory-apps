.class public final Lcom/google/maps/api/android/lib6/gmm6/d/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/google/g/a/b/b/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/d/b;->a:Z

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/d/b;->b:Z

    return-void
.end method
