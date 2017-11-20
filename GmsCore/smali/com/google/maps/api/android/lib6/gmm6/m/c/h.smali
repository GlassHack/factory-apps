.class final Lcom/google/maps/api/android/lib6/gmm6/m/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/m/a/d;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/h;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V
    .locals 3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-interface {p3}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->a()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;)V

    goto :goto_0
.end method
