.class public Lcom/google/android/gms/location/places/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/gms/location/internal/t;

.field private final c:Lcom/google/android/gms/location/places/internal/PlacesParams;

.field private final d:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/google/android/gms/location/places/internal/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/internal/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/location/internal/t;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/google/android/gms/location/places/internal/k;->b:Lcom/google/android/gms/location/internal/t;

    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/k;->d:Ljava/util/Locale;

    .line 59
    new-instance v0, Lcom/google/android/gms/location/places/internal/PlacesParams;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/k;->d:Ljava/util/Locale;

    invoke-direct {v0, p1, v1, p3}, Lcom/google/android/gms/location/places/internal/PlacesParams;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/k;->c:Lcom/google/android/gms/location/places/internal/PlacesParams;

    .line 60
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/i;Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    .line 143
    const-string v0, "callbackIntent == null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/k;->b:Lcom/google/android/gms/location/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/t;->a()V

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/k;->b:Lcom/google/android/gms/location/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/t;->b()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/j;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/k;->c:Lcom/google/android/gms/location/places/internal/PlacesParams;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/location/internal/j;->b(Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V

    .line 148
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/i;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    sget-object v1, Lcom/google/android/gms/location/places/internal/k;->a:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    sget-object v1, Lcom/google/android/gms/location/places/internal/k;->a:Ljava/lang/String;

    const-string v2, "Could not remove nearby alerts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/i;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/location/places/NearbyAlertRequest;Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    .line 127
    const-string v0, "request == null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "callbackIntent == null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/k;->b:Lcom/google/android/gms/location/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/t;->a()V

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/k;->b:Lcom/google/android/gms/location/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/t;->b()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/j;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/k;->c:Lcom/google/android/gms/location/places/internal/PlacesParams;

    invoke-interface {v0, p2, v1, p3}, Lcom/google/android/gms/location/internal/j;->a(Lcom/google/android/gms/location/places/NearbyAlertRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V

    .line 133
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/i;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    sget-object v1, Lcom/google/android/gms/location/places/internal/k;->a:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    sget-object v1, Lcom/google/android/gms/location/places/internal/k;->a:Ljava/lang/String;

    const-string v2, "Could not request nearby alerts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/i;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/location/places/ak;Lcom/google/android/gms/location/places/UserAddedPlace;)V
    .locals 2

    .prologue
    .line 191
    const-string v0, "userAddedPlace == null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/k;->b:Lcom/google/android/gms/location/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/t;->b()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/j;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/k;->c:Lcom/google/android/gms/location/places/internal/PlacesParams;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/android/gms/location/internal/j;->a(Lcom/google/android/gms/location/places/UserAddedPlace;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V

    .line 193
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/places/ak;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;ILcom/google/android/gms/location/places/PlaceFilter;)V
    .locals 7

    .prologue
    .line 65
    const-string v0, "bounds == null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    if-lez p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "maxResults should be > 0"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/k;->b:Lcom/google/android/gms/location/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/t;->a()V

    .line 71
    if-nez p3, :cond_2

    .line 72
    const-string v3, ""

    .line 75
    :goto_1
    if-nez p5, :cond_1

    .line 76
    invoke-static {}, Lcom/google/android/gms/location/places/PlaceFilter;->h()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v4

    .line 79
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/k;->b:Lcom/google/android/gms/location/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/t;->b()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/j;

    iget-object v5, p0, Lcom/google/android/gms/location/places/internal/k;->c:Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-object v1, p2

    move v2, p4

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/location/internal/j;->a(Lcom/google/android/gms/maps/model/LatLngBounds;ILjava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V

    .line 81
    return-void

    .line 67
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

.method public final a(Lcom/google/android/gms/location/places/ak;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)V
    .locals 6

    .prologue
    .line 85
    const-string v0, "query == null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "bounds == null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    if-nez p4, :cond_1

    .line 90
    invoke-static {}, Lcom/google/android/gms/location/places/AutocompleteFilter;->a()Lcom/google/android/gms/location/places/a;

    move-result-object v1

    iget-object v0, v1, Lcom/google/android/gms/location/places/a;->b:Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/google/android/gms/location/places/a;->b:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    new-instance v3, Lcom/google/android/gms/location/places/AutocompleteFilter;

    iget-boolean v1, v1, Lcom/google/android/gms/location/places/a;->a:Z

    const/4 v2, 0x0

    invoke-direct {v3, v1, v0, v2}, Lcom/google/android/gms/location/places/AutocompleteFilter;-><init>(ZLjava/util/List;B)V

    .line 93
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/k;->b:Lcom/google/android/gms/location/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/t;->a()V

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/k;->b:Lcom/google/android/gms/location/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/t;->b()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/j;

    iget-object v4, p0, Lcom/google/android/gms/location/places/internal/k;->c:Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-object v1, p2

    move-object v2, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/location/internal/j;->a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/a;)V

    .line 97
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v3, p4

    goto :goto_1
.end method
