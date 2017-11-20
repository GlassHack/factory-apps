.class final Lcom/google/android/gms/internal/dh$a;
.super Lcom/google/android/gms/common/internal/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c",
        "<",
        "Lcom/google/android/gms/internal/df;",
        ">.b<",
        "Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final GR:[Ljava/lang/String;

.field final synthetic GS:Lcom/google/android/gms/internal/dh;

.field private final vT:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/dh;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;I[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/dh$a;->GS:Lcom/google/android/gms/internal/dh;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/c$b;-><init>(Lcom/google/android/gms/common/internal/c;Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/google/android/gms/location/LocationStatusCodes;->cz(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/dh$a;->vT:I

    iput-object p4, p0, Lcom/google/android/gms/internal/dh$a;->GR:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/dh$a;->vT:I

    iget-object v1, p0, Lcom/google/android/gms/internal/dh$a;->GR:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;->onAddGeofencesResult(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected cN()V
    .locals 0

    return-void
.end method

.method protected synthetic f(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dh$a;->a(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V

    return-void
.end method
