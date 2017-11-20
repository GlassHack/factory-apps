.class public Lcom/google/android/gms/internal/fc;
.super Lcom/google/android/gms/common/internal/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fc$ae;,
        Lcom/google/android/gms/internal/fc$ad;,
        Lcom/google/android/gms/internal/fc$d;,
        Lcom/google/android/gms/internal/fc$q;,
        Lcom/google/android/gms/internal/fc$a;,
        Lcom/google/android/gms/internal/fc$ac;,
        Lcom/google/android/gms/internal/fc$l;,
        Lcom/google/android/gms/internal/fc$o;,
        Lcom/google/android/gms/internal/fc$n;,
        Lcom/google/android/gms/internal/fc$j;,
        Lcom/google/android/gms/internal/fc$k;,
        Lcom/google/android/gms/internal/fc$g;,
        Lcom/google/android/gms/internal/fc$f;,
        Lcom/google/android/gms/internal/fc$i;,
        Lcom/google/android/gms/internal/fc$h;,
        Lcom/google/android/gms/internal/fc$z;,
        Lcom/google/android/gms/internal/fc$y;,
        Lcom/google/android/gms/internal/fc$t;,
        Lcom/google/android/gms/internal/fc$s;,
        Lcom/google/android/gms/internal/fc$ab;,
        Lcom/google/android/gms/internal/fc$v;,
        Lcom/google/android/gms/internal/fc$ag;,
        Lcom/google/android/gms/internal/fc$x;,
        Lcom/google/android/gms/internal/fc$b;,
        Lcom/google/android/gms/internal/fc$m;,
        Lcom/google/android/gms/internal/fc$af;,
        Lcom/google/android/gms/internal/fc$w;,
        Lcom/google/android/gms/internal/fc$c;,
        Lcom/google/android/gms/internal/fc$p;,
        Lcom/google/android/gms/internal/fc$aa;,
        Lcom/google/android/gms/internal/fc$u;,
        Lcom/google/android/gms/internal/fc$e;,
        Lcom/google/android/gms/internal/fc$r;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c",
        "<",
        "Lcom/google/android/gms/internal/ev;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile MV:Landroid/os/Bundle;

.field private static volatile MW:Landroid/os/Bundle;


# instance fields
.field public final MT:Ljava/lang/String;

.field private final MU:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;",
            "Lcom/google/android/gms/internal/fc$r;",
            ">;"
        }
    .end annotation
.end field

.field public final wU:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fc;->MU:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/google/android/gms/internal/fc;->MT:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/fc;->wU:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/internal/c$c;

    invoke-direct {v3, p2}, Lcom/google/android/gms/common/internal/c$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    new-instance v4, Lcom/google/android/gms/common/internal/c$f;

    invoke-direct {v4, p3}, Lcom/google/android/gms/common/internal/c$f;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/fc;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(ILjava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-static {p2}, Lcom/google/android/gms/internal/fc;->e(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method private a(Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;)Lcom/google/android/gms/internal/fc$r;
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/fc;->MU:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fc;->MU:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fc;->MU:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fc$r;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/fc$r;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fc$r;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/fc;->MU:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/people/model/PersonBuffer;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fc;->d(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/people/model/PersonBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fc;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fc;->MU:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/a$a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v1, Lcom/google/android/gms/internal/fc$x;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fc$x;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ev;->b(Lcom/google/android/gms/internal/eu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v7, v7}, Lcom/google/android/gms/internal/fc$x;->a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;IZJLjava/lang/String;III)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v1, Lcom/google/android/gms/internal/fc$w;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fc$w;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v0

    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/common/util/a;->b(Ljava/util/Collection;)Ljava/util/ArrayList;

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

    invoke-interface/range {v0 .. v13}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IZJLjava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/fc$w;->a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method

.method private static b(ILandroid/os/Bundle;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1}, Lcom/google/android/gms/internal/fc;->e(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method static synthetic b(ILjava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fc;->a(ILjava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(ILandroid/os/Bundle;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/fc;->b(ILandroid/os/Bundle;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/people/model/PersonBuffer;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/people/model/PersonBuffer;

    new-instance v1, Lcom/google/android/gms/internal/fq$b;

    sget-object v2, Lcom/google/android/gms/internal/fc;->MW:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/fq$b;-><init>(Landroid/os/Bundle;)V

    new-instance v2, Lcom/google/android/gms/internal/fq$a;

    sget-object v3, Lcom/google/android/gms/internal/fc;->MV:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/fq$a;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/people/model/PersonBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/fq$b;Lcom/google/android/gms/internal/fq$a;)V

    goto :goto_0
.end method

.method private static e(Landroid/os/Bundle;)Landroid/app/PendingIntent;
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

.method static synthetic fP()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fc;->MW:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic fQ()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fc;->MV:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;J)Lcom/google/android/gms/common/internal/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;J)",
            "Lcom/google/android/gms/common/internal/g;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v1, Lcom/google/android/gms/internal/fc$v;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fc$v;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, p2, p3, v3}, Lcom/google/android/gms/internal/ev;->b(Lcom/google/android/gms/internal/eu;JZ)Lcom/google/android/gms/common/internal/g;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0, v0}, Lcom/google/android/gms/internal/fc$v;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/Images$LoadImageOptions;)Lcom/google/android/gms/common/internal/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;",
            "Lcom/google/android/gms/people/model/AvatarReference;",
            "Lcom/google/android/gms/people/Images$LoadImageOptions;",
            ")",
            "Lcom/google/android/gms/common/internal/g;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v1, Lcom/google/android/gms/internal/fc$v;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fc$v;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v2

    invoke-static {p3}, Lcom/google/android/gms/internal/ez;->a(Lcom/google/android/gms/people/Images$LoadImageOptions;)Lcom/google/android/gms/internal/ez;

    move-result-object v3

    invoke-interface {v2, v1, p2, v3}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/internal/ez;)Lcom/google/android/gms/common/internal/g;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0, v0}, Lcom/google/android/gms/internal/fc$v;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)Lcom/google/android/gms/common/internal/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/internal/g;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v1, Lcom/google/android/gms/internal/fc$v;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fc$v;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Lcom/google/android/gms/internal/ev;->b(Lcom/google/android/gms/internal/eu;Ljava/lang/String;)Lcom/google/android/gms/common/internal/g;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0, v0}, Lcom/google/android/gms/internal/fc$v;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/google/android/gms/common/internal/g;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v1, Lcom/google/android/gms/internal/fc$v;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fc$v;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v2

    invoke-interface {v2, v1, p2, p3, p4}, Lcom/google/android/gms/internal/ev;->b(Lcom/google/android/gms/internal/eu;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/g;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0, v0}, Lcom/google/android/gms/internal/fc$v;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/internal/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/internal/g;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/fc$v;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fc$v;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v2

    invoke-interface {v2, v1, p2, p3, p4}, Lcom/google/android/gms/internal/ev;->c(Lcom/google/android/gms/internal/eu;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/internal/g;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0, v0}, Lcom/google/android/gms/internal/fc$v;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/g;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/google/android/gms/common/internal/g;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v1, Lcom/google/android/gms/internal/fc$v;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fc$v;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ev;->b(Lcom/google/android/gms/internal/eu;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/g;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v6, v6}, Lcom/google/android/gms/internal/fc$v;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v6

    goto :goto_0
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "post_init_configuration"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fc;->d(Landroid/os/Bundle;)V

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1, p2, v0}, Lcom/google/android/gms/common/internal/c;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void

    :cond_1
    const-string v0, "post_init_resolution"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v0, Lcom/google/android/gms/internal/fc$s;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fc$s;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;Ljava/lang/String;I)Lcom/google/android/gms/common/internal/g;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/fc$s;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/Autocomplete$AutocompleteResult;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;",
            ")V"
        }
    .end annotation

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v1, Lcom/google/android/gms/internal/fc$m;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fc$m;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

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

    invoke-interface/range {v0 .. v10}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/internal/g;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v11, v11}, Lcom/google/android/gms/internal/fc$m;->a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/GraphUpdate$LoadAddToCircleConsentResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v0, Lcom/google/android/gms/internal/fc$j;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fc$j;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Lcom/google/android/gms/internal/ev;->b(Lcom/google/android/gms/internal/eu;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/fc$j;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v1, Lcom/google/android/gms/internal/fc$n;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fc$n;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v6, v6}, Lcom/google/android/gms/internal/fc$n;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadPeopleOptions;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
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

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;IZJLjava/lang/String;III)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadPeopleResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_0

    sget-object p4, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->DEFAULT:Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->getCircleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->getQualifiedIds()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->getProjection()I

    move-result v6

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->isPeopleOnly()Z

    move-result v7

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->getChangedSince()J

    move-result-wide v8

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->getQuery()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->getSearchFields()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->getSortOrder()I

    move-result v12

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;IZJLjava/lang/String;III)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/PeopleClient$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/a$a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/people/PeopleClient$a;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_0

    sget-object p4, Lcom/google/android/gms/people/PeopleClient$a;->Mv:Lcom/google/android/gms/people/PeopleClient$a;

    :cond_0
    invoke-virtual {p4}, Lcom/google/android/gms/people/PeopleClient$a;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/google/android/gms/people/PeopleClient$a;->fD()I

    move-result v5

    invoke-virtual {p4}, Lcom/google/android/gms/people/PeopleClient$a;->fE()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v0, Lcom/google/android/gms/internal/fc$s;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fc$s;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/fc$s;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v1, Lcom/google/android/gms/internal/fc$p;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fc$p;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/fc$p;->a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/String;ZII)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v1, Lcom/google/android/gms/internal/fc$ad;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fc$ad;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

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

    invoke-interface/range {v0 .. v12}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/String;ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/fc$ad;->a(ILandroid/os/Bundle;[Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v1, Lcom/google/android/gms/internal/fc$f;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fc$f;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v6, v6}, Lcom/google/android/gms/internal/fc$f;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v1, Lcom/google/android/gms/internal/fc$s;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fc$s;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v0

    invoke-static {p6}, Lcom/google/android/gms/people/PeopleConstants;->booleanToTriState(Ljava/lang/Boolean;)I

    move-result v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/fc$s;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v1, Lcom/google/android/gms/internal/fc$h;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fc$h;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v6, v6}, Lcom/google/android/gms/internal/fc$h;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/bh;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
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
            "Lcom/google/android/gms/internal/bh;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v1, Lcom/google/android/gms/internal/fc$y;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fc$y;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/bh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/fc$y;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v1, Lcom/google/android/gms/internal/fc$s;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fc$s;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v6, v6}, Lcom/google/android/gms/internal/fc$s;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIILjava/lang/String;ZI)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    if-eqz p11, :cond_0

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PeopleClient"

    const-string v1, "Ignoring custom sort order for all aggregation."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fd;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p11, 0x0

    move/from16 v11, p11

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/fc$ac;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fc$ac;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    sget-object v4, Lcom/google/android/gms/internal/fc;->MV:Landroid/os/Bundle;

    sget-object v5, Lcom/google/android/gms/internal/fc;->MW:Landroid/os/Bundle;

    move/from16 v2, p4

    move/from16 v3, p8

    move-object/from16 v6, p5

    move-object/from16 v7, p9

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/fn;->a(Landroid/content/Context;Lcom/google/android/gms/internal/fn$d;ZILandroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/fn;

    move-result-object v13

    new-instance v1, Lcom/google/android/gms/internal/fc$l;

    invoke-direct {v1, p0, v13}, Lcom/google/android/gms/internal/fc$l;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/internal/fn;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

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

    invoke-interface/range {v0 .. v12}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/String;ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v13}, Lcom/google/android/gms/internal/fn;->ge()V

    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/fc$l;->a(ILandroid/os/Bundle;[Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_1

    :cond_0
    move/from16 v11, p11

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v0, Lcom/google/android/gms/internal/fc$s;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fc$s;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;Ljava/lang/String;Z[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/fc$s;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;ZZLjava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadOwnersResult;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v1, Lcom/google/android/gms/internal/fc$u;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fc$u;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;ZZLjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v7, v7}, Lcom/google/android/gms/internal/fc$u;->a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/internal/c$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "social_client_application_id"

    iget-object v2, p0, Lcom/google/android/gms/internal/fc;->MT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "real_client_package_name"

    iget-object v2, p0, Lcom/google/android/gms/internal/fc;->wU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x5d4044

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/i;->b(Lcom/google/android/gms/common/internal/h;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    iget-object v7, p0, Lcom/google/android/gms/internal/fc;->MU:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;)Lcom/google/android/gms/internal/fc$r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v0

    const/4 v2, 0x1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;ZLjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v7

    move v0, v6

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "PeopleClient"

    const-string v2, "Failed to register listener"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/fd;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected aY(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ev;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/ev$a;->aX(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ev;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v0, Lcom/google/android/gms/internal/fc$s;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fc$s;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Lcom/google/android/gms/internal/ev;->c(Lcom/google/android/gms/internal/eu;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/fc$s;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    new-instance v0, Lcom/google/android/gms/internal/fc$q;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fc$q;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/fc$q;->a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/internal/c$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/c",
            "<",
            "Lcom/google/android/gms/internal/ev;",
            ">.b<*>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/internal/c$b;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;JZZ)Z
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ev;->a(Ljava/lang/String;Ljava/lang/String;JZZ)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "PeopleClient"

    const-string v2, "Service call failed."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/fd;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized d(Landroid/os/Bundle;)V
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

    invoke-static {v0}, Lcom/google/android/gms/internal/fn;->k(Z)V

    sget-object v0, Lcom/google/android/gms/internal/fb;->MQ:Lcom/google/android/gms/internal/fb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fb;->c(Landroid/os/Bundle;)V

    const-string v0, "config.email_type_map"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fc;->MV:Landroid/os/Bundle;

    const-string v0, "config.phone_type_map"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fc;->MW:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disconnect()V
    .locals 8

    iget-object v6, p0, Lcom/google/android/gms/internal/fc;->MU:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fc;->MU:Ljava/util/HashMap;

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

    check-cast v1, Lcom/google/android/gms/internal/fc$r;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;ZLjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "PeopleClient"

    const-string v2, "Failed to unregister listener"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fc;->MU:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/c;->disconnect()V

    return-void

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "PeopleClient"

    const-string v2, "PeopleService is in unexpected state"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public expGetEmailTypeMapBundle()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    sget-object v0, Lcom/google/android/gms/internal/fc;->MV:Landroid/os/Bundle;

    return-object v0
.end method

.method public expGetPhoneTypeMapBundle()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    sget-object v0, Lcom/google/android/gms/internal/fc;->MW:Landroid/os/Bundle;

    return-object v0
.end method

.method protected fN()Lcom/google/android/gms/internal/ev;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/common/internal/c;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ev;

    return-object v0
.end method

.method protected fO()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/c;->V()V

    return-void
.end method

.method protected getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    return-object v0
.end method

.method protected getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.people.service.START"

    return-object v0
.end method

.method protected synthetic i(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fc;->aY(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ev;

    move-result-object v0

    return-object v0
.end method

.method public isSyncToContactsEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ev;->isSyncToContactsEnabled()Z

    move-result v0

    return v0
.end method

.method public setSyncToContactsEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ev;->setSyncToContactsEnabled(Z)V

    return-void
.end method

.method public syncRawContact(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "rawContactUri"    # Landroid/net/Uri;

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ev;->d(Landroid/net/Uri;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "PeopleClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot refresh raw contact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/fd;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterOnDataChangedListener(Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;

    .prologue
    iget-object v6, p0, Lcom/google/android/gms/internal/fc;->MU:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fO()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fc;->MU:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fc;->MU:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/fc;->MU:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/fc$r;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc;->fN()Lcom/google/android/gms/internal/ev;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/eu;ZLjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/fc;->MU:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "PeopleClient"

    const-string v2, "Failed to unregister listener"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/fd;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/fc;->MU:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
