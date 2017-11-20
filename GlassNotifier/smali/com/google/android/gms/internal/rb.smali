.class public Lcom/google/android/gms/internal/rb;
.super Lcom/google/android/gms/common/internal/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/rb$ad;,
        Lcom/google/android/gms/internal/rb$ac;,
        Lcom/google/android/gms/internal/rb$d;,
        Lcom/google/android/gms/internal/rb$q;,
        Lcom/google/android/gms/internal/rb$a;,
        Lcom/google/android/gms/internal/rb$ab;,
        Lcom/google/android/gms/internal/rb$l;,
        Lcom/google/android/gms/internal/rb$o;,
        Lcom/google/android/gms/internal/rb$n;,
        Lcom/google/android/gms/internal/rb$j;,
        Lcom/google/android/gms/internal/rb$k;,
        Lcom/google/android/gms/internal/rb$g;,
        Lcom/google/android/gms/internal/rb$f;,
        Lcom/google/android/gms/internal/rb$i;,
        Lcom/google/android/gms/internal/rb$h;,
        Lcom/google/android/gms/internal/rb$y;,
        Lcom/google/android/gms/internal/rb$x;,
        Lcom/google/android/gms/internal/rb$t;,
        Lcom/google/android/gms/internal/rb$s;,
        Lcom/google/android/gms/internal/rb$aa;,
        Lcom/google/android/gms/internal/rb$v;,
        Lcom/google/android/gms/internal/rb$b;,
        Lcom/google/android/gms/internal/rb$m;,
        Lcom/google/android/gms/internal/rb$ae;,
        Lcom/google/android/gms/internal/rb$w;,
        Lcom/google/android/gms/internal/rb$c;,
        Lcom/google/android/gms/internal/rb$p;,
        Lcom/google/android/gms/internal/rb$z;,
        Lcom/google/android/gms/internal/rb$u;,
        Lcom/google/android/gms/internal/rb$e;,
        Lcom/google/android/gms/internal/rb$r;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/i",
        "<",
        "Lcom/google/android/gms/internal/qt;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile aDw:Landroid/os/Bundle;

.field private static volatile aDx:Landroid/os/Bundle;


# instance fields
.field public final Tb:Ljava/lang/String;

.field public final aDu:Ljava/lang/String;

.field private final aDv:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/people/Notifications$OnDataChanged;",
            "Lcom/google/android/gms/internal/rb$r;",
            ">;"
        }
    .end annotation
.end field

.field private aDy:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/rb;->aDv:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/rb;->aDy:Ljava/lang/Long;

    iput-object p5, p0, Lcom/google/android/gms/internal/rb;->aDu:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/rb;->Tb:Ljava/lang/String;

    return-void
.end method

.method private static a(ILjava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-static {p2}, Lcom/google/android/gms/internal/rb;->v(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Notifications$OnDataChanged;)Lcom/google/android/gms/internal/rb$r;
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/rb;->aDv:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->aDv:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->aDv:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rb$r;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/rb$r;

    invoke-interface {p1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient;->h(Ljava/lang/Object;)Lcom/google/android/gms/common/api/e;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/rb$r;-><init>(Lcom/google/android/gms/common/api/e;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/rb;->aDv:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;IZJLjava/lang/String;III)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadPeopleResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;IZJ",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v1, Lcom/google/android/gms/internal/rb$w;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rb$w;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/common/util/a;->c(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-interface/range {v0 .. v13}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IZJLjava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/rb$w;->a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method

.method private static ac(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/people/model/PersonBuffer;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/people/model/PersonBuffer;

    new-instance v1, Lcom/google/android/gms/internal/rp$b;

    sget-object v2, Lcom/google/android/gms/internal/rb;->aDx:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/rp$b;-><init>(Landroid/os/Bundle;)V

    new-instance v2, Lcom/google/android/gms/internal/rp$a;

    sget-object v3, Lcom/google/android/gms/internal/rb;->aDw:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/rp$a;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/people/model/PersonBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/rp$b;Lcom/google/android/gms/internal/rp$a;)V

    goto :goto_0
.end method

.method static synthetic ad(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/people/model/PersonBuffer;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/rb;->ac(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/people/model/PersonBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(ILjava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/rb;->a(ILjava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method private static h(ILandroid/os/Bundle;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1}, Lcom/google/android/gms/internal/rb;->v(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method static synthetic i(ILandroid/os/Bundle;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/rb;->h(ILandroid/os/Bundle;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized rn()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->aDy:Ljava/lang/Long;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/rb;->ro()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->aDy:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized ro()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/rd;->aa(Landroid/content/Context;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/rb;->aDy:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic rp()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/rb;->aDx:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic rq()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/rb;->aDw:Landroid/os/Bundle;

    return-object v0
.end method

.method private static v(Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "pendingIntent"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    goto :goto_0
.end method


# virtual methods
.method public T(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/qt;->T(Z)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;J)Lcom/google/android/gms/common/internal/ICancelToken;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;J)",
            "Lcom/google/android/gms/common/internal/ICancelToken;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v1, Lcom/google/android/gms/internal/rb$v;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rb$v;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, p2, p3, v3}, Lcom/google/android/gms/internal/qt;->b(Lcom/google/android/gms/internal/qs;JZ)Lcom/google/android/gms/common/internal/ICancelToken;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0, v0, v0}, Lcom/google/android/gms/internal/rb$v;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/Images$LoadImageOptions;)Lcom/google/android/gms/common/internal/ICancelToken;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;",
            "Lcom/google/android/gms/people/model/AvatarReference;",
            "Lcom/google/android/gms/people/Images$LoadImageOptions;",
            ")",
            "Lcom/google/android/gms/common/internal/ICancelToken;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v1, Lcom/google/android/gms/internal/rb$v;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rb$v;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v2

    invoke-static {p3}, Lcom/google/android/gms/internal/qx;->a(Lcom/google/android/gms/people/Images$LoadImageOptions;)Lcom/google/android/gms/internal/qx;

    move-result-object v3

    invoke-interface {v2, v1, p2, v3}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/internal/qx;)Lcom/google/android/gms/common/internal/ICancelToken;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0, v0, v0}, Lcom/google/android/gms/internal/rb$v;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/ICancelToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/google/android/gms/common/internal/ICancelToken;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v1, Lcom/google/android/gms/internal/rb$v;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rb$v;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v2

    invoke-interface {v2, v1, p2, p3, p4}, Lcom/google/android/gms/internal/qt;->b(Lcom/google/android/gms/internal/qs;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/ICancelToken;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0, v0, v0}, Lcom/google/android/gms/internal/rb$v;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/internal/ICancelToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/internal/ICancelToken;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/rb$v;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rb$v;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v2

    invoke-interface {v2, v1, p2, p3, p4}, Lcom/google/android/gms/internal/qt;->c(Lcom/google/android/gms/internal/qs;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/internal/ICancelToken;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0, v0, v0}, Lcom/google/android/gms/internal/rb$v;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "post_init_configuration"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/rb;->u(Landroid/os/Bundle;)V

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1, p2, v0}, Lcom/google/android/gms/common/internal/i;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void

    :cond_1
    const-string v0, "post_init_resolution"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Notifications$OnDataChanged;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    iget-object v6, p0, Lcom/google/android/gms/internal/rb;->aDv:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/rb;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Notifications$OnDataChanged;)Lcom/google/android/gms/internal/rb$r;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    const/4 v2, 0x1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;ZLjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/people/model/AutocompleteBuffer;IIJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;",
            "Lcom/google/android/gms/people/model/AutocompleteBuffer;",
            "IIJ)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    invoke-virtual {p2}, Lcom/google/android/gms/people/model/AutocompleteBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "AutocompleteBuffer is released."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/rb;->rn()J

    move-result-wide v6

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/rb$s;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/rb$s;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/people/model/AutocompleteBuffer;->getDataHolder()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v3

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;Lcom/google/android/gms/common/data/DataHolder;IIJ)Lcom/google/android/gms/common/internal/ICancelToken;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz p3, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/rb;->ro()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/rb$s;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz p3, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/rb;->ro()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-ltz p3, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/rb;->ro()V

    :cond_2
    throw v0

    :cond_3
    move-wide v6, p5

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/Autocomplete$AutocompleteResult;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;",
            ")V"
        }
    .end annotation

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v1, Lcom/google/android/gms/internal/rb$m;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rb$m;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    iget-object v2, p3, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->account:Ljava/lang/String;

    iget-object v3, p3, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->pageId:Ljava/lang/String;

    iget-boolean v4, p3, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->isDirectorySearch:Z

    iget-object v5, p3, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->directoryAccountType:Ljava/lang/String;

    iget v7, p3, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->autocompleteType:I

    iget v8, p3, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->searchOptions:I

    iget v9, p3, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->numberOfResults:I

    iget-boolean v10, p3, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->useAndroidContactFallback:Z

    move-object v6, p2

    invoke-interface/range {v0 .. v10}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/internal/ICancelToken;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v11, v11}, Lcom/google/android/gms/internal/rb$m;->a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/Images$SetAvatarResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v1, Lcom/google/android/gms/internal/rb$n;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rb$n;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v6, v6}, Lcom/google/android/gms/internal/rb$n;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadPeopleOptions;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadPeopleResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/people/Graph$LoadPeopleOptions;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_0

    sget-object p4, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->DEFAULT:Lcom/google/android/gms/people/Graph$LoadPeopleOptions;

    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->getCircleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->getQualifiedIds()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->getProjection()I

    move-result v6

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->isPeopleOnly()Z

    move-result v7

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->getChangedSince()J

    move-result-wide v8

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->getQuery()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->getSearchFields()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->getSortOrder()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->getExtraColumns()I

    move-result v13

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/rb;->a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;IZJLjava/lang/String;III)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v0, Lcom/google/android/gms/internal/rb$s;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/rb$s;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/rb$s;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadCirclesResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v1, Lcom/google/android/gms/internal/rb$p;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rb$p;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/rb$p;->a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/String;ZII)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZII",
            "Ljava/lang/String;",
            "ZII)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v1, Lcom/google/android/gms/internal/rb$ac;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rb$ac;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-interface/range {v0 .. v12}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/String;ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/rb$ac;->a(ILandroid/os/Bundle;[Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/GraphUpdate$AddCircleResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v1, Lcom/google/android/gms/internal/rb$f;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rb$f;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v6, v6}, Lcom/google/android/gms/internal/rb$f;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v1, Lcom/google/android/gms/internal/rb$s;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rb$s;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    invoke-static {p6}, Lcom/google/android/gms/people/PeopleConstants;->booleanToTriState(Ljava/lang/Boolean;)I

    move-result v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/rb$s;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/GraphUpdate$a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v1, Lcom/google/android/gms/internal/rb$h;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rb$h;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v6, v6}, Lcom/google/android/gms/internal/rb$h;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/ki;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/GraphUpdate$UpdatePersonCircleResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ki;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v1, Lcom/google/android/gms/internal/rb$x;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rb$x;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/ki;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/rb$x;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v1, Lcom/google/android/gms/internal/rb$s;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rb$s;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v6, v6}, Lcom/google/android/gms/internal/rb$s;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIILjava/lang/String;ZI)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "ZII",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    if-eqz p11, :cond_0

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PeopleClient"

    const-string v1, "Ignoring custom sort order for all aggregation."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/rc;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p11, 0x0

    move/from16 v11, p11

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/rb$ab;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rb$ab;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    sget-object v4, Lcom/google/android/gms/internal/rb;->aDw:Landroid/os/Bundle;

    sget-object v5, Lcom/google/android/gms/internal/rb;->aDx:Landroid/os/Bundle;

    move/from16 v2, p4

    move/from16 v3, p8

    move-object/from16 v6, p5

    move-object/from16 v7, p9

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/rm;->a(Landroid/content/Context;Lcom/google/android/gms/internal/rm$d;ZILandroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/rm;

    move-result-object v13

    new-instance v1, Lcom/google/android/gms/internal/rb$l;

    invoke-direct {v1, v13}, Lcom/google/android/gms/internal/rb$l;-><init>(Lcom/google/android/gms/internal/rm;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    const/4 v5, 0x7

    const/4 v12, 0x3

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-interface/range {v0 .. v12}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/String;ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v13}, Lcom/google/android/gms/internal/rm;->rD()V

    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/rb$l;->a(ILandroid/os/Bundle;[Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_1

    :cond_0
    move/from16 v11, p11

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v0, Lcom/google/android/gms/internal/rb$s;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/rb$s;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;Ljava/lang/String;Z[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/rb$s;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;ZZLjava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadOwnersResult;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v1, Lcom/google/android/gms/internal/rb$u;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rb$u;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;ZZLjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v7, v7}, Lcom/google/android/gms/internal/rb$u;->a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/common/internal/q;Lcom/google/android/gms/common/internal/i$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "social_client_application_id"

    iget-object v2, p0, Lcom/google/android/gms/internal/rb;->aDu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "real_client_package_name"

    iget-object v2, p0, Lcom/google/android/gms/internal/rb;->Tb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "support_new_image_callback"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const v1, 0x675cf0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/q;->b(Lcom/google/android/gms/common/internal/p;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/ICancelToken;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/google/android/gms/common/internal/ICancelToken;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v1, Lcom/google/android/gms/internal/rb$v;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rb$v;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/qt;->b(Lcom/google/android/gms/internal/qs;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/ICancelToken;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v6, v6, v6}, Lcom/google/android/gms/internal/rb$v;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)V

    move-object v0, v6

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Notifications$OnDataChanged;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v6, p0, Lcom/google/android/gms/internal/rb;->aDv:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->aDv:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->aDv:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->aDv:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/rb$r;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/rb$r;->release()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;ZLjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->aDv:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/internal/rb;->aDv:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public b(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v0, Lcom/google/android/gms/internal/rb$q;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/rb$q;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/rb$q;->a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;JZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/qt;->a(Ljava/lang/String;Ljava/lang/String;JZZ)Landroid/os/Bundle;

    return-void
.end method

.method protected bO()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.people.service.START"

    return-object v0
.end method

.method protected bP()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    return-object v0
.end method

.method public d(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v1, Lcom/google/android/gms/internal/rb$s;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rb$s;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    const/4 v3, 0x0

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/qt;->b(Lcom/google/android/gms/internal/qs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v6, v6}, Lcom/google/android/gms/internal/rb$s;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 8

    iget-object v6, p0, Lcom/google/android/gms/internal/rb;->aDv:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->aDv:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/rb$r;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/rb$r;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;ZLjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "PeopleClient"

    const-string v2, "Failed to unregister listener"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/rc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "PeopleClient"

    const-string v2, "PeopleService is in unexpected state"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/rc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/rb;->aDv:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/i;->disconnect()V

    return-void
.end method

.method protected dx(Landroid/os/IBinder;)Lcom/google/android/gms/internal/qt;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/qt$a;->dw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/qt;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/GraphUpdate$LoadAddToCircleConsentResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v0, Lcom/google/android/gms/internal/rb$j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/rb$j;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Lcom/google/android/gms/internal/qt;->b(Lcom/google/android/gms/internal/qs;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/rb$j;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public f(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v0, Lcom/google/android/gms/internal/rb$s;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/rb$s;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Lcom/google/android/gms/internal/qt;->c(Lcom/google/android/gms/internal/qs;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/rb$s;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public g(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v0, Lcom/google/android/gms/internal/rb$s;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/rb$s;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/internal/qs;Ljava/lang/String;I)Lcom/google/android/gms/common/internal/ICancelToken;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/rb$s;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public isSyncToContactsEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/qt;->isSyncToContactsEnabled()Z

    move-result v0

    return v0
.end method

.method public k(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/qt;->j(Landroid/net/Uri;)Landroid/os/Bundle;

    return-void
.end method

.method protected pE()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/i;->dX()V

    return-void
.end method

.method protected synthetic q(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rb;->dx(Landroid/os/IBinder;)Lcom/google/android/gms/internal/qt;

    move-result-object v0

    return-object v0
.end method

.method protected rm()Lcom/google/android/gms/internal/qt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/common/internal/i;->jh()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qt;

    return-object v0
.end method

.method public s(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;)Lcom/google/android/gms/common/internal/ICancelToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/internal/ICancelToken;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->pE()V

    new-instance v1, Lcom/google/android/gms/internal/rb$v;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rb$v;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rb;->rm()Lcom/google/android/gms/internal/qt;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Lcom/google/android/gms/internal/qt;->b(Lcom/google/android/gms/internal/qs;Ljava/lang/String;)Lcom/google/android/gms/common/internal/ICancelToken;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0, v0, v0}, Lcom/google/android/gms/internal/rb$v;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public declared-synchronized u(Landroid/os/Bundle;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "use_contactables_api"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/rm;->U(Z)V

    sget-object v0, Lcom/google/android/gms/internal/ra;->aDr:Lcom/google/android/gms/internal/ra;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ra;->t(Landroid/os/Bundle;)V

    const-string v0, "config.email_type_map"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/rb;->aDw:Landroid/os/Bundle;

    const-string v0, "config.phone_type_map"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/rb;->aDx:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
