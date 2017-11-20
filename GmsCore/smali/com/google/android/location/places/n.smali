.class public final Lcom/google/android/location/places/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/b/b;


# static fields
.field private static final a:Lcom/google/android/gms/location/places/internal/PlacesParams;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/google/android/location/places/ab;

.field private final e:Landroid/content/pm/PackageManager;

.field private final f:Lcom/google/android/location/places/d/b;

.field private final g:Lcom/google/android/location/places/b/d;

.field private final h:Lcom/google/android/location/places/b;

.field private final i:Lcom/google/android/location/o/ab;

.field private final j:Ljava/lang/Object;

.field private k:Z

.field private final l:Lcom/google/android/location/places/bm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/gms/location/places/internal/PlacesParams;

    const-string v1, "com.google.android.gms"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/location/places/internal/PlacesParams;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/places/n;->a:Lcom/google/android/gms/location/places/internal/PlacesParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/location/places/bm;Lcom/google/android/location/places/ab;Lcom/google/android/location/places/d/b;Lcom/google/android/location/places/b/d;Lcom/google/android/location/places/b/a;Lcom/google/android/location/places/b;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/n;->j:Ljava/lang/Object;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/places/n;->k:Z

    .line 80
    iput-object p1, p0, Lcom/google/android/location/places/n;->b:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/google/android/location/places/n;->c:Landroid/os/Handler;

    .line 82
    iput-object p3, p0, Lcom/google/android/location/places/n;->l:Lcom/google/android/location/places/bm;

    .line 83
    iput-object p4, p0, Lcom/google/android/location/places/n;->d:Lcom/google/android/location/places/ab;

    .line 84
    iput-object p5, p0, Lcom/google/android/location/places/n;->f:Lcom/google/android/location/places/d/b;

    .line 85
    iput-object p6, p0, Lcom/google/android/location/places/n;->g:Lcom/google/android/location/places/b/d;

    .line 86
    iput-object p8, p0, Lcom/google/android/location/places/n;->h:Lcom/google/android/location/places/b;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/n;->e:Landroid/content/pm/PackageManager;

    .line 88
    invoke-static {p1}, Lcom/google/android/location/o/ab;->a(Landroid/content/Context;)Lcom/google/android/location/o/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/n;->i:Lcom/google/android/location/o/ab;

    .line 90
    iput-object p0, p7, Lcom/google/android/location/places/b/a;->d:Lcom/google/android/location/places/b/b;

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/places/n;ILjava/util/List;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x3

    .line 41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v3, :cond_1

    const-string v0, "Places"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Places"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected PlaceLikelihoodBuffer size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Dropping nearby alert"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceLikelihood;

    iget-object v5, p0, Lcom/google/android/location/places/n;->j:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/places/n;->l:Lcom/google/android/location/places/bm;

    invoke-virtual {v1}, Lcom/google/android/location/places/bm;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/places/NearbyAlertSubscription;

    iget-object v2, p0, Lcom/google/android/location/places/n;->i:Lcom/google/android/location/o/ab;

    invoke-virtual {v2}, Lcom/google/android/location/o/ab;->a()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "Places"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Places"

    const-string v2, "User is not in the foreground, dropping nearby alert"

    invoke-static {v1, v2}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/google/android/location/places/n;->e:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Lcom/google/android/location/places/NearbyAlertSubscription;->a(Landroid/content/pm/PackageManager;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, v1}, Lcom/google/android/location/places/n;->b(Lcom/google/android/location/places/NearbyAlertSubscription;)V

    const-string v1, "Places"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Places"

    const-string v2, "Nearby alert subscription is not permitted - removed"

    invoke-static {v1, v2}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v7, v1, Lcom/google/android/location/places/NearbyAlertSubscription;->a:Lcom/google/android/gms/location/places/NearbyAlertRequest;

    packed-switch p1, :pswitch_data_0

    move v2, v4

    :goto_2
    invoke-virtual {v7}, Lcom/google/android/gms/location/places/NearbyAlertRequest;->b()I

    move-result v7

    and-int/2addr v7, v2

    if-ne v7, v2, :cond_5

    move v2, v3

    :goto_3
    if-nez v2, :cond_6

    const-string v1, "Places"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Places"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Wrong source of places for this nearby alert subscription: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    move v2, v3

    goto :goto_2

    :pswitch_1
    const/4 v2, 0x4

    goto :goto_2

    :pswitch_2
    const/4 v2, 0x2

    goto :goto_2

    :cond_5
    move v2, v4

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lcom/google/android/location/places/NearbyAlertSubscription;->b()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceLikelihood;->b()Lcom/google/android/gms/location/places/h;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/location/places/PlaceFilter;->a(Lcom/google/android/gms/location/places/h;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v1, "Places"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Places"

    const-string v2, "Nearby alert subscription not interested in the nearby alert"

    invoke-static {v1, v2}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v1}, Lcom/google/android/location/places/NearbyAlertSubscription;->e()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/location/places/n;->f:Lcom/google/android/location/places/d/b;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceLikelihood;->b()Lcom/google/android/gms/location/places/h;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/location/places/h;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v1}, Lcom/google/android/location/places/d/b;->a(Ljava/lang/String;Lcom/google/android/location/places/Subscription;)Lcom/google/android/gms/location/places/personalized/PlaceUserData;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v1, "Places"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Places"

    const-string v2, "No matching place user data available for nearby alert"

    invoke-static {v1, v2}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :cond_8
    :try_start_2
    iget-object v2, p0, Lcom/google/android/location/places/n;->d:Lcom/google/android/location/places/ab;

    invoke-virtual {v2, p1, p2, v1}, Lcom/google/android/location/places/ab;->a(ILjava/util/List;Lcom/google/android/location/places/Subscription;)V

    const-string v2, "Places"

    const/4 v7, 0x3

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Places"

    const-string v7, "PlaceLikelihood delivered"

    invoke-static {v2, v7}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    const-string v2, "Places"

    const/4 v7, 0x3

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "Places"

    const-string v7, "pending intent cancelled by client"

    invoke-static {v2, v7}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-direct {p0, v1}, Lcom/google/android/location/places/n;->b(Lcom/google/android/location/places/NearbyAlertSubscription;)V

    goto/16 :goto_1

    :cond_a
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private b(Lcom/google/android/location/places/NearbyAlertSubscription;)V
    .locals 3

    .prologue
    .line 268
    iget-object v1, p0, Lcom/google/android/location/places/n;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/places/n;->k:Z

    if-nez v0, :cond_0

    .line 270
    monitor-exit v1

    .line 284
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/n;->l:Lcom/google/android/location/places/bm;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/bm;->b(Lcom/google/android/location/places/Subscription;)Lcom/google/android/location/places/Subscription;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/NearbyAlertSubscription;

    .line 273
    if-eqz v0, :cond_3

    .line 274
    invoke-virtual {v0}, Lcom/google/android/location/places/NearbyAlertSubscription;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 275
    iget-object v2, p0, Lcom/google/android/location/places/n;->f:Lcom/google/android/location/places/d/b;

    invoke-virtual {v2, v0}, Lcom/google/android/location/places/d/b;->c(Lcom/google/android/location/places/Subscription;)V

    .line 284
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 277
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/android/location/places/n;->g:Lcom/google/android/location/places/b/d;

    invoke-virtual {v2, v0}, Lcom/google/android/location/places/b/d;->b(Lcom/google/android/location/places/NearbyAlertSubscription;)V

    goto :goto_1

    .line 280
    :cond_3
    const-string v0, "Places"

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    const-string v0, "Places"

    const-string v2, "Subscription was not registered in the first place"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 162
    invoke-static {p1}, Lcom/google/android/location/places/NearbyAlertSubscription;->a(Landroid/app/PendingIntent;)Lcom/google/android/location/places/NearbyAlertSubscription;

    move-result-object v0

    .line 163
    invoke-direct {p0, v0}, Lcom/google/android/location/places/n;->b(Lcom/google/android/location/places/NearbyAlertSubscription;)V

    .line 164
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 94
    iget-object v0, p0, Lcom/google/android/location/places/n;->l:Lcom/google/android/location/places/bm;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/bm;->b(Landroid/content/Intent;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Z)V

    .line 95
    const-string v0, "Places"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "Places"

    const-string v1, "Initializing NearbyAlertSubscriptionManager\'s system cache."

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/places/n;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/places/n;->k:Z

    if-eqz v0, :cond_2

    .line 101
    const-string v0, "Places"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const-string v0, "Places"

    const-string v2, "NearbyAlertSubscriptionManager.initializeSystemCache called >1 times"

    invoke-static {v0, v2}, Lcom/google/android/location/o/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_1
    monitor-exit v1

    .line 118
    :goto_0
    return-void

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/n;->l:Lcom/google/android/location/places/bm;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/bm;->a(Landroid/content/Intent;)V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/places/n;->k:Z

    .line 111
    iget-object v0, p0, Lcom/google/android/location/places/n;->l:Lcom/google/android/location/places/bm;

    invoke-virtual {v0}, Lcom/google/android/location/places/bm;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/NearbyAlertSubscription;

    .line 112
    invoke-virtual {v0}, Lcom/google/android/location/places/NearbyAlertSubscription;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 113
    iget-object v3, p0, Lcom/google/android/location/places/n;->f:Lcom/google/android/location/places/d/b;

    invoke-virtual {v3, v0}, Lcom/google/android/location/places/d/b;->b(Lcom/google/android/location/places/Subscription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 115
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/google/android/location/places/n;->g:Lcom/google/android/location/places/b/d;

    invoke-virtual {v3, v0}, Lcom/google/android/location/places/b/d;->a(Lcom/google/android/location/places/NearbyAlertSubscription;)V

    goto :goto_1

    .line 118
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/location/places/NearbyAlertSubscription;)V
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Lcom/google/android/location/places/n;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/places/n;->l:Lcom/google/android/location/places/bm;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/bm;->b(Lcom/google/android/location/places/Subscription;)Lcom/google/android/location/places/Subscription;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/NearbyAlertSubscription;

    .line 142
    iget-object v2, p0, Lcom/google/android/location/places/n;->l:Lcom/google/android/location/places/bm;

    invoke-virtual {v2, p1}, Lcom/google/android/location/places/bm;->a(Lcom/google/android/location/places/Subscription;)V

    .line 143
    iget-boolean v2, p0, Lcom/google/android/location/places/n;->k:Z

    if-nez v2, :cond_0

    .line 144
    monitor-exit v1

    .line 158
    :goto_0
    return-void

    .line 146
    :cond_0
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Lcom/google/android/location/places/NearbyAlertSubscription;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    iget-object v2, p0, Lcom/google/android/location/places/n;->f:Lcom/google/android/location/places/d/b;

    invoke-virtual {v2, v0}, Lcom/google/android/location/places/d/b;->c(Lcom/google/android/location/places/Subscription;)V

    .line 153
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/location/places/NearbyAlertSubscription;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/google/android/location/places/n;->f:Lcom/google/android/location/places/d/b;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/d/b;->b(Lcom/google/android/location/places/Subscription;)V

    .line 158
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 150
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/android/location/places/n;->g:Lcom/google/android/location/places/b/d;

    invoke-virtual {v2, v0}, Lcom/google/android/location/places/b/d;->b(Lcom/google/android/location/places/NearbyAlertSubscription;)V

    goto :goto_1

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/places/n;->g:Lcom/google/android/location/places/b/d;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/b/d;->a(Lcom/google/android/location/places/NearbyAlertSubscription;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public final a(Ljava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 122
    iget-object v1, p0, Lcom/google/android/location/places/n;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/places/n;->k:Z

    if-nez v0, :cond_0

    .line 124
    const-string v0, "NearbyAlertSubscriptionManager not yet initialized from cache"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    monitor-exit v1

    .line 133
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v0, "\nActive NearbyAlertSubscriptions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/location/places/n;->l:Lcom/google/android/location/places/bm;

    invoke-virtual {v0}, Lcom/google/android/location/places/bm;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/NearbyAlertSubscription;

    .line 130
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/location/places/n;->h:Lcom/google/android/location/places/b;

    sget-object v1, Lcom/google/android/location/places/n;->a:Lcom/google/android/gms/location/places/internal/PlacesParams;

    new-instance v2, Lcom/google/android/location/places/o;

    const/16 v3, 0x66

    invoke-direct {v2, p0, v3}, Lcom/google/android/location/places/o;-><init>(Lcom/google/android/location/places/n;I)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/location/places/b;->a(Ljava/lang/String;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/aa;)V

    .line 293
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/location/places/n;->h:Lcom/google/android/location/places/b;

    sget-object v1, Lcom/google/android/location/places/n;->a:Lcom/google/android/gms/location/places/internal/PlacesParams;

    new-instance v2, Lcom/google/android/location/places/o;

    const/16 v3, 0x67

    invoke-direct {v2, p0, v3}, Lcom/google/android/location/places/o;-><init>(Lcom/google/android/location/places/n;I)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/location/places/b;->a(Ljava/lang/String;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/aa;)V

    .line 301
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/location/places/n;->h:Lcom/google/android/location/places/b;

    sget-object v1, Lcom/google/android/location/places/n;->a:Lcom/google/android/gms/location/places/internal/PlacesParams;

    new-instance v2, Lcom/google/android/location/places/o;

    const/16 v3, 0x68

    invoke-direct {v2, p0, v3}, Lcom/google/android/location/places/o;-><init>(Lcom/google/android/location/places/n;I)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/location/places/b;->a(Ljava/lang/String;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/aa;)V

    .line 309
    return-void
.end method
