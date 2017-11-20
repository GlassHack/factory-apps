.class final Lcom/google/maps/api/android/lib6/c/dg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/cx;


# instance fields
.field private synthetic a:F


# direct methods
.method constructor <init>(F)V
    .locals 0

    iput p1, p0, Lcom/google/maps/api/android/lib6/c/dg;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/c/cw;ILcom/google/maps/api/android/lib6/c/bu;)V
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/c/bw;->au:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {p3, v0}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/c/dg;->a:F

    invoke-interface {p1, v0, p2}, Lcom/google/maps/api/android/lib6/c/cw;->a(FI)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->au:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
