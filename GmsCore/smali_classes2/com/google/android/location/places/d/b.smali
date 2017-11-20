.class public final Lcom/google/android/location/places/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/b/c;


# static fields
.field static final a:J

.field static final b:J

.field static final c:J


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/location/places/c/h;

.field private final f:Lcom/google/android/location/places/bo;

.field private final g:Lcom/google/android/location/places/c/b;

.field private final h:Lcom/google/android/location/places/d/g;

.field private final i:Lcom/google/android/location/places/b/a;

.field private final j:Lcom/google/android/location/fused/g;

.field private final k:Landroid/app/AlarmManager;

.field private final l:Lcom/google/android/location/geofencer/service/ah;

.field private final m:Lcom/google/android/gms/common/util/i;

.field private final n:Lcom/google/android/location/places/d/d;

.field private final o:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 60
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/places/d/b;->a:J

    .line 62
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/places/d/b;->b:J

    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/places/d/b;->c:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/places/c/h;Lcom/google/android/location/places/bo;Lcom/google/android/location/places/c/b;Lcom/google/android/location/places/d/g;Lcom/google/android/location/fused/g;Lcom/google/android/location/places/b/a;Landroid/app/AlarmManager;Lcom/google/android/location/geofencer/service/ah;Landroid/support/v4/a/i;Lcom/google/android/gms/common/util/i;)V
    .locals 3

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    new-instance v0, Lcom/google/android/location/places/d/c;

    invoke-direct {v0, p0}, Lcom/google/android/location/places/d/c;-><init>(Lcom/google/android/location/places/d/b;)V

    iput-object v0, p0, Lcom/google/android/location/places/d/b;->o:Landroid/content/BroadcastReceiver;

    .line 97
    iput-object p1, p0, Lcom/google/android/location/places/d/b;->d:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/google/android/location/places/d/b;->e:Lcom/google/android/location/places/c/h;

    .line 99
    iput-object p3, p0, Lcom/google/android/location/places/d/b;->f:Lcom/google/android/location/places/bo;

    .line 100
    iput-object p4, p0, Lcom/google/android/location/places/d/b;->g:Lcom/google/android/location/places/c/b;

    .line 101
    iput-object p5, p0, Lcom/google/android/location/places/d/b;->h:Lcom/google/android/location/places/d/g;

    .line 102
    iput-object p6, p0, Lcom/google/android/location/places/d/b;->j:Lcom/google/android/location/fused/g;

    .line 103
    iput-object p7, p0, Lcom/google/android/location/places/d/b;->i:Lcom/google/android/location/places/b/a;

    .line 104
    iput-object p8, p0, Lcom/google/android/location/places/d/b;->k:Landroid/app/AlarmManager;

    .line 105
    iput-object p9, p0, Lcom/google/android/location/places/d/b;->l:Lcom/google/android/location/geofencer/service/ah;

    .line 106
    iput-object p11, p0, Lcom/google/android/location/places/d/b;->m:Lcom/google/android/gms/common/util/i;

    .line 107
    new-instance v0, Lcom/google/android/location/places/d/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/places/d/d;-><init>(Lcom/google/android/location/places/d/b;B)V

    iput-object v0, p0, Lcom/google/android/location/places/d/b;->n:Lcom/google/android/location/places/d/d;

    .line 111
    iget-object v0, p0, Lcom/google/android/location/places/d/b;->o:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.location.internal.action.PLACES_REFRESH_USER_DATA_SUBSCRIPTION"

    invoke-static {v2}, Lcom/google/android/location/internal/PendingIntentCallbackService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p10, v0, v1}, Landroid/support/v4/a/i;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 113
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/places/d/b;)Lcom/google/android/location/fused/g;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/location/places/d/b;->j:Lcom/google/android/location/fused/g;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/location/places/d/b;Lcom/google/android/location/places/Subscription;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/location/places/d/b;->e(Lcom/google/android/location/places/Subscription;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/location/places/d/b;)Lcom/google/android/location/places/bo;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/location/places/d/b;->f:Lcom/google/android/location/places/bo;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/location/places/d/b;)Lcom/google/android/location/places/c/h;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/location/places/d/b;->e:Lcom/google/android/location/places/c/h;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/location/places/d/b;)Lcom/google/android/location/places/c/b;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/location/places/d/b;->g:Lcom/google/android/location/places/c/b;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/location/places/d/b;)Lcom/google/android/location/places/d/d;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/location/places/d/b;->n:Lcom/google/android/location/places/d/d;

    return-object v0
.end method

.method private e(Lcom/google/android/location/places/Subscription;)V
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/google/android/location/places/d/e;

    invoke-direct {v0, p0, p1}, Lcom/google/android/location/places/d/e;-><init>(Lcom/google/android/location/places/d/b;Lcom/google/android/location/places/Subscription;)V

    invoke-virtual {v0}, Lcom/google/android/location/places/d/e;->run()V

    .line 189
    return-void
.end method

.method static synthetic f(Lcom/google/android/location/places/d/b;)Lcom/google/android/location/places/d/g;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/location/places/d/b;->h:Lcom/google/android/location/places/d/g;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/location/places/d/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/location/places/d/b;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/location/places/d/b;)Lcom/google/android/location/geofencer/service/ah;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/location/places/d/b;->l:Lcom/google/android/location/geofencer/service/ah;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/location/places/d/b;)Lcom/google/android/gms/common/util/i;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/location/places/d/b;->m:Lcom/google/android/gms/common/util/i;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/location/places/d/b;)Landroid/app/AlarmManager;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/location/places/d/b;->k:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/location/places/d/b;)Lcom/google/android/location/places/b/a;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/location/places/d/b;->i:Lcom/google/android/location/places/b/a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/location/places/Subscription;)Lcom/google/android/gms/location/places/personalized/PlaceUserData;
    .locals 2

    .prologue
    .line 140
    invoke-interface {p2}, Lcom/google/android/location/places/Subscription;->a()Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->d:Ljava/lang/String;

    .line 141
    invoke-interface {p2}, Lcom/google/android/location/places/Subscription;->b()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/location/places/PlaceFilter;->f()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/location/places/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/google/android/gms/location/places/personalized/PlaceUserData;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/google/android/gms/location/places/personalized/PlaceUserData;
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/location/places/d/b;->h:Lcom/google/android/location/places/d/g;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/location/places/d/g;->a:Lcom/google/c/c/ci;

    invoke-interface {v0, p2}, Lcom/google/c/c/ci;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->a(Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    :goto_0
    return-object v0

    .line 152
    :cond_1
    const/4 v0, 0x0

    .line 154
    goto :goto_0
.end method

.method final a(Landroid/content/Intent;)Lcom/google/android/location/places/Subscription;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 177
    if-nez p1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-object v0

    .line 180
    :cond_1
    const-string v1, "extra_subscription_code"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 184
    iget-object v0, p0, Lcom/google/android/location/places/d/b;->n:Lcom/google/android/location/places/d/d;

    iget-object v0, v0, Lcom/google/android/location/places/d/d;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/Subscription;

    goto :goto_0
.end method

.method public final a(Lcom/google/android/location/places/Subscription;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/google/android/location/places/d/b;->e(Lcom/google/android/location/places/Subscription;)V

    .line 160
    return-void
.end method

.method public final b(Lcom/google/android/location/places/Subscription;)V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/location/places/d/b;->n:Lcom/google/android/location/places/d/d;

    iget-object v1, v0, Lcom/google/android/location/places/d/d;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/location/places/d/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    iget-object v2, v0, Lcom/google/android/location/places/d/d;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/location/places/d/d;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/location/places/d/b;->e(Lcom/google/android/location/places/Subscription;)V

    .line 122
    return-void
.end method

.method public final c(Lcom/google/android/location/places/Subscription;)V
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/google/android/location/places/d/b;->n:Lcom/google/android/location/places/d/d;

    iget-object v0, v1, Lcom/google/android/location/places/d/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/google/android/location/places/d/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v1, Lcom/google/android/location/places/d/d;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/android/location/places/d/d;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/b;->i:Lcom/google/android/location/places/b/a;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/b/a;->a(Lcom/google/android/location/places/Subscription;)V

    .line 133
    return-void
.end method

.method final d(Lcom/google/android/location/places/Subscription;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/location/places/d/b;->n:Lcom/google/android/location/places/d/d;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/d/d;->a(Lcom/google/android/location/places/Subscription;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 172
    :goto_0
    return-object v0

    .line 167
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/location/places/d/b;->d:Landroid/content/Context;

    const-class v2, Lcom/google/android/location/internal/PendingIntentCallbackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    const-string v1, "com.google.android.location.internal.action.PLACES_REFRESH_USER_DATA_SUBSCRIPTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Lcom/google/android/location/places/d/b;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v1, "extra_subscription_code"

    iget-object v2, p0, Lcom/google/android/location/places/d/b;->n:Lcom/google/android/location/places/d/d;

    invoke-virtual {v2, p1}, Lcom/google/android/location/places/d/d;->b(Lcom/google/android/location/places/Subscription;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0
.end method
