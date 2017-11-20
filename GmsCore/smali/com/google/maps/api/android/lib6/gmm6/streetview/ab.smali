.class public final Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:I

.field c:Z

.field d:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->a()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->b:I

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->c:Z

    return-void
.end method

.method final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
