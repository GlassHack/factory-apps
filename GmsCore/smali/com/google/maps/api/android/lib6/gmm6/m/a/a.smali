.class public final Lcom/google/maps/api/android/lib6/gmm6/m/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/m/a/d;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

.field private final b:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/a/d;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a/a;->a:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a/a;->b:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a/a;->a:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a/a;->a:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a/a;->b:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a/a;->b:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    :cond_1
    return-void
.end method
