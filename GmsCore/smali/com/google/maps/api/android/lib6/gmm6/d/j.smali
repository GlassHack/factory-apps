.class public final Lcom/google/maps/api/android/lib6/gmm6/d/j;
.super Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/google/g/a/b/b/f;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    :cond_0
    return-void
.end method
