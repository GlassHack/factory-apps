.class Lcom/google/android/gms/maps/StreetViewPanoramaView$a;
.super Lcom/google/android/gms/dynamic/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/StreetViewPanoramaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/a",
        "<",
        "Lcom/google/android/gms/maps/StreetViewPanoramaView$b;",
        ">;"
    }
.end annotation


# instance fields
.field protected JT:Lcom/google/android/gms/dynamic/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/dynamic/d",
            "<",
            "Lcom/google/android/gms/maps/StreetViewPanoramaView$b;",
            ">;"
        }
    .end annotation
.end field

.field private final JY:Landroid/view/ViewGroup;

.field private final Kr:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/dynamic/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->JY:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->Kr:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/dynamic/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/d",
            "<",
            "Lcom/google/android/gms/maps/StreetViewPanoramaView$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->JT:Lcom/google/android/gms/dynamic/d;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->fh()V

    return-void
.end method

.method public fh()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->JT:Lcom/google/android/gms/dynamic/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->dt()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/u;->F(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/c;->i(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->Kr:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/maps/internal/c;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->JT:Lcom/google/android/gms/dynamic/d;

    new-instance v2, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;

    iget-object v3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->JY:Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;-><init>(Landroid/view/ViewGroup;Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
