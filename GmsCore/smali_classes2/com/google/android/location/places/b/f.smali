.class final Lcom/google/android/location/places/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/location/places/Subscription;

.field final b:Lcom/google/android/gms/maps/model/LatLngBounds;

.field final c:J

.field d:Z

.field final synthetic e:Lcom/google/android/location/places/b/d;

.field private final f:Lcom/google/android/location/places/b/l;

.field private g:Ljava/util/Set;

.field private h:Z

.field private i:Z

.field private final j:Lcom/google/android/location/places/aa;

.field private final k:Lcom/google/android/location/places/aa;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/b/d;Lcom/google/android/location/places/Subscription;Lcom/google/android/gms/maps/model/LatLngBounds;J)V
    .locals 4

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/location/places/b/f;->e:Lcom/google/android/location/places/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    new-instance v0, Lcom/google/android/location/places/b/h;

    invoke-direct {v0, p0}, Lcom/google/android/location/places/b/h;-><init>(Lcom/google/android/location/places/b/f;)V

    iput-object v0, p0, Lcom/google/android/location/places/b/f;->j:Lcom/google/android/location/places/aa;

    .line 285
    new-instance v0, Lcom/google/android/location/places/b/j;

    invoke-direct {v0, p0}, Lcom/google/android/location/places/b/j;-><init>(Lcom/google/android/location/places/b/f;)V

    iput-object v0, p0, Lcom/google/android/location/places/b/f;->k:Lcom/google/android/location/places/aa;

    .line 167
    iput-object p2, p0, Lcom/google/android/location/places/b/f;->a:Lcom/google/android/location/places/Subscription;

    .line 168
    iput-object p3, p0, Lcom/google/android/location/places/b/f;->b:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 169
    iput-wide p4, p0, Lcom/google/android/location/places/b/f;->c:J

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/places/b/f;->d:Z

    .line 171
    new-instance v1, Lcom/google/android/location/places/b/l;

    invoke-virtual {p3}, Lcom/google/android/gms/maps/model/LatLngBounds;->c()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    sget-object v0, Lcom/google/android/location/x;->t:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/location/places/b/l;-><init>(Lcom/google/android/gms/maps/model/LatLng;F)V

    iput-object v1, p0, Lcom/google/android/location/places/b/f;->f:Lcom/google/android/location/places/b/l;

    .line 173
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/places/b/f;ILjava/util/List;I)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 151
    iget-boolean v0, p0, Lcom/google/android/location/places/b/f;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/places/b/f;->e:Lcom/google/android/location/places/b/d;

    invoke-static {v0}, Lcom/google/android/location/places/b/d;->b(Lcom/google/android/location/places/b/d;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/b/f;->a:Lcom/google/android/location/places/Subscription;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Places"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Places"

    const-string v1, "Nearby alert subscription was canceled before places were retrieved"

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_5

    const-string v0, "Places"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Places"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Place estimation failed, status = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-wide v0, p0, Lcom/google/android/location/places/b/f;->c:J

    sget-wide v2, Lcom/google/android/location/places/b/d;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iput-boolean v4, p0, Lcom/google/android/location/places/b/f;->d:Z

    iget-object v0, p0, Lcom/google/android/location/places/b/f;->e:Lcom/google/android/location/places/b/d;

    invoke-static {v0}, Lcom/google/android/location/places/b/d;->b(Lcom/google/android/location/places/b/d;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/b/f;->a:Lcom/google/android/location/places/Subscription;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v0, "Places"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Places"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retrying GooglePlacesServer.search() in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/android/location/places/b/f;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " millis"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/location/places/b/f;->e:Lcom/google/android/location/places/b/d;

    invoke-static {v0}, Lcom/google/android/location/places/b/d;->c(Lcom/google/android/location/places/b/d;)Lcom/google/android/location/places/bo;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/places/b/g;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/b/g;-><init>(Lcom/google/android/location/places/b/f;)V

    iget-wide v2, p0, Lcom/google/android/location/places/b/f;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/places/bo;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    const-string v0, "Places"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Places"

    const-string v1, "Received place estimate"

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-ne p3, v4, :cond_8

    iput-boolean v4, p0, Lcom/google/android/location/places/b/f;->i:Z

    :cond_7
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceLikelihood;

    iget-object v2, p0, Lcom/google/android/location/places/b/f;->g:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceLikelihood;->b()Lcom/google/android/gms/location/places/h;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    if-ne p3, v2, :cond_7

    iput-boolean v4, p0, Lcom/google/android/location/places/b/f;->h:Z

    goto :goto_1

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/location/places/b/f;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/places/b/f;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/places/b/f;->e:Lcom/google/android/location/places/b/d;

    iget-object v1, p0, Lcom/google/android/location/places/b/f;->a:Lcom/google/android/location/places/Subscription;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/location/places/b/f;->g:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/google/android/location/places/b/f;->f:Lcom/google/android/location/places/b/l;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/location/places/b/d;->a(Lcom/google/android/location/places/b/d;Lcom/google/android/location/places/Subscription;Ljava/util/List;Lcom/google/android/location/places/b/l;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 181
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/b/f;->g:Ljava/util/Set;

    .line 182
    iput-boolean v1, p0, Lcom/google/android/location/places/b/f;->h:Z

    .line 183
    iput-boolean v1, p0, Lcom/google/android/location/places/b/f;->i:Z

    .line 184
    iget-object v0, p0, Lcom/google/android/location/places/b/f;->a:Lcom/google/android/location/places/Subscription;

    invoke-interface {v0}, Lcom/google/android/location/places/Subscription;->b()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v7

    .line 186
    iget-object v0, p0, Lcom/google/android/location/places/b/f;->e:Lcom/google/android/location/places/b/d;

    invoke-static {v0}, Lcom/google/android/location/places/b/d;->a(Lcom/google/android/location/places/b/d;)Lcom/google/android/location/places/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/b/f;->b:Lcom/google/android/gms/maps/model/LatLngBounds;

    const/16 v2, 0x64

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/location/places/b/f;->a:Lcom/google/android/location/places/Subscription;

    invoke-interface {v4}, Lcom/google/android/location/places/Subscription;->b()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/location/places/b/f;->a:Lcom/google/android/location/places/Subscription;

    invoke-interface {v5}, Lcom/google/android/location/places/Subscription;->a()Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/location/places/b/f;->k:Lcom/google/android/location/places/aa;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/location/places/b;->a(Lcom/google/android/gms/maps/model/LatLngBounds;ILjava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/aa;)V

    .line 194
    invoke-virtual {v7}, Lcom/google/android/gms/location/places/PlaceFilter;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/android/location/places/b/f;->e:Lcom/google/android/location/places/b/d;

    invoke-static {v0}, Lcom/google/android/location/places/b/d;->a(Lcom/google/android/location/places/b/d;)Lcom/google/android/location/places/b;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/google/android/gms/location/places/PlaceFilter;->b()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/google/android/location/places/b/f;->a:Lcom/google/android/location/places/Subscription;

    invoke-interface {v2}, Lcom/google/android/location/places/Subscription;->a()Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/places/b/f;->j:Lcom/google/android/location/places/aa;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/places/b;->a(Ljava/util/List;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/aa;)V

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/places/b/f;->i:Z

    goto :goto_0
.end method
