.class public Lcom/google/maps/api/android/lib6/gmm6/f/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/f/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/maps/api/android/lib6/gmm6/l/av;ZLcom/google/maps/api/android/lib6/gmm6/l/au;)Lcom/google/maps/api/android/lib6/gmm6/f/f;
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/f/f;

    invoke-direct {v0, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/f/f;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/au;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/maps/api/android/lib6/gmm6/l/av;IZLcom/google/maps/api/android/lib6/gmm6/l/au;)Lcom/google/maps/api/android/lib6/gmm6/f/g;
    .locals 1

    if-eqz p3, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/f/d;

    invoke-direct {v0, p1, p2, p4}, Lcom/google/maps/api/android/lib6/gmm6/f/d;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;ILcom/google/maps/api/android/lib6/gmm6/l/au;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/f/f;

    invoke-direct {v0, p1, p4}, Lcom/google/maps/api/android/lib6/gmm6/f/f;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/au;)V

    goto :goto_0
.end method
