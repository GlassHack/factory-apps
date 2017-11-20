.class final Lcom/google/maps/api/android/lib6/c/dd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/cx;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/LatLngBounds;III)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/dd;->a:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput p2, p0, Lcom/google/maps/api/android/lib6/c/dd;->b:I

    iput p3, p0, Lcom/google/maps/api/android/lib6/c/dd;->c:I

    iput p4, p0, Lcom/google/maps/api/android/lib6/c/dd;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/c/cw;ILcom/google/maps/api/android/lib6/c/bu;)V
    .locals 6

    sget-object v0, Lcom/google/maps/api/android/lib6/c/bw;->aA:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {p3, v0}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/dd;->a:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget v2, p0, Lcom/google/maps/api/android/lib6/c/dd;->b:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/c/dd;->c:I

    iget v4, p0, Lcom/google/maps/api/android/lib6/c/dd;->d:I

    move-object v0, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/c/cw;->a(Lcom/google/android/gms/maps/model/LatLngBounds;IIII)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->aA:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
