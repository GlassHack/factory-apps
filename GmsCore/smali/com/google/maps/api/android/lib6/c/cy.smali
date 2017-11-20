.class public final Lcom/google/maps/api/android/lib6/c/cy;
.super Lcom/google/android/gms/maps/internal/c;


# static fields
.field private static final a:Lcom/google/maps/api/android/lib6/c/cx;

.field private static final b:Lcom/google/maps/api/android/lib6/c/cx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/c/cz;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/c/cz;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/c/cy;->a:Lcom/google/maps/api/android/lib6/c/cx;

    new-instance v0, Lcom/google/maps/api/android/lib6/c/de;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/c/de;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/c/cy;->b:Lcom/google/maps/api/android/lib6/c/cx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/e/i;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/c/cy;->a:Lcom/google/maps/api/android/lib6/c/cx;

    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(F)Lcom/google/android/gms/e/i;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/c/df;

    invoke-direct {v0, p1}, Lcom/google/maps/api/android/lib6/c/df;-><init>(F)V

    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(FF)Lcom/google/android/gms/e/i;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/c/di;

    invoke-direct {v0, p1, p2}, Lcom/google/maps/api/android/lib6/c/di;-><init>(FF)V

    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(FII)Lcom/google/android/gms/e/i;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/c/dh;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/c/dh;-><init>(FII)V

    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/e/i;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/c/dj;

    invoke-direct {v0, p1}, Lcom/google/maps/api/android/lib6/c/dj;-><init>(Lcom/google/android/gms/maps/model/CameraPosition;)V

    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/e/i;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/c/da;

    invoke-direct {v0, p1}, Lcom/google/maps/api/android/lib6/c/da;-><init>(Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/e/i;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/c/db;

    invoke-direct {v0, p1, p2}, Lcom/google/maps/api/android/lib6/c/db;-><init>(Lcom/google/android/gms/maps/model/LatLng;F)V

    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/e/i;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/c/dc;

    invoke-direct {v0, p1, p2}, Lcom/google/maps/api/android/lib6/c/dc;-><init>(Lcom/google/android/gms/maps/model/LatLngBounds;I)V

    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLngBounds;III)Lcom/google/android/gms/e/i;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/c/dd;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/maps/api/android/lib6/c/dd;-><init>(Lcom/google/android/gms/maps/model/LatLngBounds;III)V

    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/e/i;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/c/cy;->b:Lcom/google/maps/api/android/lib6/c/cx;

    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v0

    return-object v0
.end method

.method public final b(F)Lcom/google/android/gms/e/i;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/c/dg;

    invoke-direct {v0, p1}, Lcom/google/maps/api/android/lib6/c/dg;-><init>(F)V

    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v0

    return-object v0
.end method
