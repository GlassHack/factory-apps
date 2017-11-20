.class public Lcom/google/android/gms/location/places/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/places/w;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    const-class v0, Lcom/google/android/gms/location/places/z;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/z;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/places/z;->b:Ljava/util/LinkedHashSet;

    return-void
.end method

.method private static a(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "<br>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/location/places/z;Lcom/google/android/gms/location/places/k;)V
    .locals 5

    .prologue
    .line 32
    iget-object v1, p0, Lcom/google/android/gms/location/places/z;->b:Ljava/util/LinkedHashSet;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/k;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceLikelihood;

    iget-object v3, p0, Lcom/google/android/gms/location/places/z;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceLikelihood;->b()Lcom/google/android/gms/location/places/h;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/PlaceImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->n()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/location/places/z;->a:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/location/places/z;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Attributions: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/location/places/z;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/gms/location/places/z;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/j;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/y;
    .locals 1

    .prologue
    .line 275
    new-instance v0, Lcom/google/android/gms/location/places/ad;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/location/places/ad;-><init>(Lcom/google/android/gms/location/places/z;Landroid/app/PendingIntent;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/location/places/NearbyAlertRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/y;
    .locals 1

    .prologue
    .line 322
    new-instance v0, Lcom/google/android/gms/location/places/ae;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/location/places/ae;-><init>(Lcom/google/android/gms/location/places/z;Lcom/google/android/gms/location/places/NearbyAlertRequest;Landroid/app/PendingIntent;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/location/places/UserAddedPlace;)Lcom/google/android/gms/common/api/y;
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/google/android/gms/location/places/aa;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/location/places/aa;-><init>(Lcom/google/android/gms/location/places/z;Lcom/google/android/gms/location/places/UserAddedPlace;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;I)Lcom/google/android/gms/common/api/y;
    .locals 6

    .prologue
    .line 355
    new-instance v0, Lcom/google/android/gms/location/places/ab;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/places/ab;-><init>(Lcom/google/android/gms/location/places/z;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;ILcom/google/android/gms/location/places/PlaceFilter;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/j;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/common/api/y;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Lcom/google/android/gms/location/places/ac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p3, v1}, Lcom/google/android/gms/location/places/ac;-><init>(Lcom/google/android/gms/location/places/z;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/google/android/gms/location/places/z;->b:Ljava/util/LinkedHashSet;

    monitor-enter v1

    .line 216
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/location/places/z;->b:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 217
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-static {v0}, Lcom/google/android/gms/location/places/z;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
