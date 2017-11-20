.class public Lcom/google/android/gms/internal/dt;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final GG:Lcom/google/android/gms/internal/dm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/dm",
            "<",
            "Lcom/google/android/gms/internal/df;",
            ">;"
        }
    .end annotation
.end field

.field private final IE:Lcom/google/android/gms/internal/du;

.field private final Ir:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/dt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/dt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/dm;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/dm",
            "<",
            "Lcom/google/android/gms/internal/df;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/dt;->GG:Lcom/google/android/gms/internal/dm;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dt;->Ir:Ljava/util/Locale;

    new-instance v0, Lcom/google/android/gms/internal/du;

    iget-object v1, p0, Lcom/google/android/gms/internal/dt;->Ir:Ljava/util/Locale;

    invoke-direct {v0, p1, v1, p3}, Lcom/google/android/gms/internal/du;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dt;->IE:Lcom/google/android/gms/internal/du;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Landroid/app/PendingIntent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    const-string v0, "callbackIntent == null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->V()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    iget-object v1, p0, Lcom/google/android/gms/internal/dt;->IE:Lcom/google/android/gms/internal/du;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/df;->b(Lcom/google/android/gms/internal/du;Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/dt;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/dt;->TAG:Ljava/lang/String;

    const-string v2, "Could not remove nearby alerts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/location/places/NearbyAlertRequest;Landroid/app/PendingIntent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/location/places/NearbyAlertRequest;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    const-string v0, "request == null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callbackIntent == null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->V()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    iget-object v1, p0, Lcom/google/android/gms/internal/dt;->IE:Lcom/google/android/gms/internal/du;

    invoke-interface {v0, p2, v1, p3}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/location/places/NearbyAlertRequest;Lcom/google/android/gms/internal/du;Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/dt;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/dt;->TAG:Ljava/lang/String;

    const-string v2, "Could not request nearby alerts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/location/places/PlaceReport;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/location/places/PlaceReport;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    iget-object v1, p0, Lcom/google/android/gms/internal/dt;->IE:Lcom/google/android/gms/internal/du;

    invoke-interface {v0, p2, v1}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/location/places/PlaceReport;Lcom/google/android/gms/internal/du;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/dt;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/dt;->TAG:Ljava/lang/String;

    const-string v2, "Could not report place"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/location/places/PlaceRequest;Landroid/app/PendingIntent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/location/places/PlaceRequest;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    const-string v0, "request == null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callbackIntent == null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->V()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    iget-object v1, p0, Lcom/google/android/gms/internal/dt;->IE:Lcom/google/android/gms/internal/du;

    invoke-interface {v0, p2, v1, p3}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/location/places/PlaceRequest;Lcom/google/android/gms/internal/du;Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/dt;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/dt;->TAG:Ljava/lang/String;

    const-string v2, "Could not request place updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/location/places/i$f;Lcom/google/android/gms/location/places/PlaceFilter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-static {}, Lcom/google/android/gms/location/places/PlaceFilter;->getDefaultFilter()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    iget-object v1, p0, Lcom/google/android/gms/internal/dt;->IE:Lcom/google/android/gms/internal/du;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/internal/du;Lcom/google/android/gms/internal/dn;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/location/places/i$f;Lcom/google/android/gms/location/places/UserAddedPlace;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "userAddedPlace == null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    iget-object v1, p0, Lcom/google/android/gms/internal/dt;->IE:Lcom/google/android/gms/internal/du;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/location/places/UserAddedPlace;Lcom/google/android/gms/internal/du;Lcom/google/android/gms/internal/dn;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/location/places/i$f;Lcom/google/android/gms/location/places/UserDataType;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/places/i$f;",
            "Lcom/google/android/gms/location/places/UserDataType;",
            "Lcom/google/android/gms/maps/model/LatLngBounds;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->V()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    iget-object v4, p0, Lcom/google/android/gms/internal/dt;->IE:Lcom/google/android/gms/internal/du;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/location/places/UserDataType;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/util/List;Lcom/google/android/gms/internal/du;Lcom/google/android/gms/internal/dn;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/location/places/i$f;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;ILcom/google/android/gms/location/places/PlaceFilter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "bounds == null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "maxResults should be > 0"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->V()V

    if-nez p3, :cond_2

    const-string v3, ""

    :goto_1
    if-nez p5, :cond_1

    invoke-static {}, Lcom/google/android/gms/location/places/PlaceFilter;->getDefaultFilter()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v4

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    iget-object v5, p0, Lcom/google/android/gms/internal/dt;->IE:Lcom/google/android/gms/internal/du;

    move-object v1, p2

    move v2, p4

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/maps/model/LatLngBounds;ILjava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/internal/du;Lcom/google/android/gms/internal/dn;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v4, p5

    goto :goto_2

    :cond_2
    move-object v3, p3

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/location/places/i$f;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    iget-object v1, p0, Lcom/google/android/gms/internal/dt;->IE:Lcom/google/android/gms/internal/du;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/android/gms/internal/df;->b(Ljava/lang/String;Lcom/google/android/gms/internal/du;Lcom/google/android/gms/internal/dn;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/location/places/i$f;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "query == null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bounds == null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_0

    invoke-static {}, Lcom/google/android/gms/location/places/AutocompleteFilter;->newBuilder()Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->build()Lcom/google/android/gms/location/places/AutocompleteFilter;

    move-result-object v3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->V()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    iget-object v4, p0, Lcom/google/android/gms/internal/dt;->IE:Lcom/google/android/gms/internal/du;

    move-object v1, p2

    move-object v2, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/df;->a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;Lcom/google/android/gms/internal/du;Lcom/google/android/gms/internal/dn;)V

    return-void

    :cond_0
    move-object v3, p4

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;Landroid/app/PendingIntent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    const-string v0, "callbackIntent == null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->V()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->GG:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    iget-object v1, p0, Lcom/google/android/gms/internal/dt;->IE:Lcom/google/android/gms/internal/du;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/internal/du;Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/dt;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/dt;->TAG:Ljava/lang/String;

    const-string v2, "Could not remove place updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
