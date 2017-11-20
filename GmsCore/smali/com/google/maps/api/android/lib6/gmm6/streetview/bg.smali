.class final Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

.field b:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

.field c:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;-><init>()V

    return-void
.end method


# virtual methods
.method final a(IIILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    :goto_0
    iput p1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->b:I

    iput p2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->c:I

    iput p3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->d:I

    iput-object p4, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->e:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    iput-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    goto :goto_1
.end method

.method final a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
