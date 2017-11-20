.class public interface abstract Lcom/google/maps/api/android/lib6/c/cw;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/maps/model/CameraPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v0}, Lcom/google/android/gms/maps/model/CameraPosition;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/c/cw;->a:Lcom/google/android/gms/maps/model/CameraPosition;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/maps/model/LatLng;)F
.end method

.method public abstract a(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/CameraPosition;
.end method

.method public abstract a()V
.end method

.method public abstract a(F)V
.end method

.method public abstract a(FFI)V
.end method

.method public abstract a(FI)V
.end method

.method public abstract a(FIII)V
.end method

.method public abstract a(IIII)V
.end method

.method public abstract a(Lcom/google/android/gms/maps/internal/aa;)V
.end method

.method public abstract a(Lcom/google/android/gms/maps/model/CameraPosition;I)V
.end method

.method public abstract a(Lcom/google/android/gms/maps/model/LatLng;FI)V
.end method

.method public abstract a(Lcom/google/android/gms/maps/model/LatLng;I)V
.end method

.method public abstract a(Lcom/google/android/gms/maps/model/LatLngBounds;II)V
.end method

.method public abstract a(Lcom/google/android/gms/maps/model/LatLngBounds;IIII)V
.end method

.method public abstract a(Lcom/google/maps/api/android/lib6/c/cx;ILcom/google/android/gms/maps/internal/e;Lcom/google/maps/api/android/lib6/c/bu;)V
.end method

.method public abstract b(FI)V
.end method

.method public abstract b(Lcom/google/android/gms/maps/internal/aa;)V
.end method

.method public abstract c()Lcom/google/android/gms/maps/model/CameraPosition;
.end method

.method public abstract c(Lcom/google/android/gms/maps/internal/aa;)V
.end method

.method public abstract d()F
.end method
