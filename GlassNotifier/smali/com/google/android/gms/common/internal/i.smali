.class public abstract Lcom/google/android/gms/common/internal/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$a;
.implements Lcom/google/android/gms/common/internal/j$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/i$d;,
        Lcom/google/android/gms/common/internal/i$g;,
        Lcom/google/android/gms/common/internal/i$f;,
        Lcom/google/android/gms/common/internal/i$c;,
        Lcom/google/android/gms/common/internal/i$b;,
        Lcom/google/android/gms/common/internal/i$a;,
        Lcom/google/android/gms/common/internal/i$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/Api$a;",
        "Lcom/google/android/gms/common/internal/j$a;"
    }
.end annotation


# static fields
.field public static final GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;


# instance fields
.field private final KE:Landroid/os/Looper;

.field private final Tj:Lcom/google/android/gms/common/internal/j;

.field private final WA:[Ljava/lang/String;

.field WB:Z

.field private Wu:Lcom/google/android/gms/common/internal/d;

.field private final Wv:Lcom/google/android/gms/common/internal/k;

.field private Ww:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final Wx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/internal/i",
            "<TT;>.b<*>;>;"
        }
    .end annotation
.end field

.field private Wy:Lcom/google/android/gms/common/internal/i$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/i",
            "<TT;>.e;"
        }
    .end annotation
.end field

.field private Wz:I

.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private final mQ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "service_esmobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_googleme"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/internal/i;->GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/google/android/gms/common/internal/i;->Wu:Lcom/google/android/gms/common/internal/d;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->mQ:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wx:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/i;->Wz:I

    iput-boolean v3, p0, Lcom/google/android/gms/common/internal/i;->WB:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->KE:Landroid/os/Looper;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/k;->M(Landroid/content/Context;)Lcom/google/android/gms/common/internal/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wv:Lcom/google/android/gms/common/internal/k;

    new-instance v0, Lcom/google/android/gms/common/internal/j;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->KE:Landroid/os/Looper;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/common/internal/j;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/j$a;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->Tj:Lcom/google/android/gms/common/internal/j;

    new-instance v0, Lcom/google/android/gms/common/internal/i$a;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->KE:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/internal/i$a;-><init>(Lcom/google/android/gms/common/internal/i;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->WA:[Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/common/internal/d;

    const-string v1, "TEST_ACCOUNT"

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-string v5, "TEST_PACKAGE"

    const-string v6, "TEST_CLIENT"

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/d;-><init>(Ljava/lang/String;Ljava/util/Collection;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wu:Lcom/google/android/gms/common/internal/d;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/d;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/k;->M(Landroid/content/Context;)Lcom/google/android/gms/common/internal/k;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/k;Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method protected varargs constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wu:Lcom/google/android/gms/common/internal/d;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->mQ:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wx:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/i;->Wz:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/i;->WB:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->mContext:Landroid/content/Context;

    const-string v0, "Looper must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->KE:Landroid/os/Looper;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/k;->M(Landroid/content/Context;)Lcom/google/android/gms/common/internal/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wv:Lcom/google/android/gms/common/internal/k;

    new-instance v0, Lcom/google/android/gms/common/internal/j;

    invoke-direct {v0, p2, p0}, Lcom/google/android/gms/common/internal/j;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/j$a;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->Tj:Lcom/google/android/gms/common/internal/j;

    new-instance v0, Lcom/google/android/gms/common/internal/i$a;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/internal/i$a;-><init>(Lcom/google/android/gms/common/internal/i;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p5}, Lcom/google/android/gms/common/internal/i;->c([Ljava/lang/String;)V

    iput-object p5, p0, Lcom/google/android/gms/common/internal/i;->WA:[Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/u;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/i;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    invoke-static {p4}, Lcom/google/android/gms/common/internal/u;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/i;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/k;Lcom/google/android/gms/common/internal/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wu:Lcom/google/android/gms/common/internal/d;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->mQ:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wx:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/i;->Wz:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/i;->WB:Z

    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->mContext:Landroid/content/Context;

    const-string v0, "Looper must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->KE:Landroid/os/Looper;

    const-string v0, "Supervisor must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/k;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wv:Lcom/google/android/gms/common/internal/k;

    new-instance v0, Lcom/google/android/gms/common/internal/j;

    invoke-direct {v0, p2, p0}, Lcom/google/android/gms/common/internal/j;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/j$a;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->Tj:Lcom/google/android/gms/common/internal/j;

    new-instance v0, Lcom/google/android/gms/common/internal/i$a;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/internal/i$a;-><init>(Lcom/google/android/gms/common/internal/i;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4}, Lcom/google/android/gms/common/internal/d;->iZ()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->WA:[Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->WA:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/i;->c([Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/common/internal/i;->Wu:Lcom/google/android/gms/common/internal/d;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/k;Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/k;Lcom/google/android/gms/common/internal/d;)V

    invoke-static {p5}, Lcom/google/android/gms/common/internal/u;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/i;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    invoke-static {p6}, Lcom/google/android/gms/common/internal/u;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/i;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method protected varargs constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/internal/i$c;

    invoke-direct {v3, p2}, Lcom/google/android/gms/common/internal/i$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    new-instance v4, Lcom/google/android/gms/common/internal/i$f;

    invoke-direct {v4, p3}, Lcom/google/android/gms/common/internal/i$f;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/internal/i$e;)Lcom/google/android/gms/common/internal/i$e;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/i;->Wy:Lcom/google/android/gms/common/internal/i$e;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Tj:Lcom/google/android/gms/common/internal/j;

    return-object v0
.end method

.method private a(ILandroid/os/IInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    move v3, v0

    :goto_0
    if-eqz p2, :cond_1

    move v2, v0

    :goto_1
    if-ne v3, v2, :cond_2

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->K(Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/common/internal/i;->Wz:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/i;->Ww:Landroid/os/IInterface;

    monitor-exit v1

    return-void

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/i;ILandroid/os/IInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/i;->a(ILandroid/os/IInterface;)V

    return-void
.end method

.method private a(IILandroid/os/IInterface;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/i;->Wz:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/i;->a(ILandroid/os/IInterface;)V

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/i;IILandroid/os/IInterface;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/i;->a(IILandroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/internal/i;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wx:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/common/internal/i;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/i$e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wy:Lcom/google/android/gms/common/internal/i$e;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wv:Lcom/google/android/gms/common/internal/k;

    return-object v0
.end method


# virtual methods
.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/common/internal/i$g;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/i$g;-><init>(Lcom/google/android/gms/common/internal/i;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/internal/i$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/i",
            "<TT;>.b<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->Wx:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wx:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected abstract a(Lcom/google/android/gms/common/internal/q;Lcom/google/android/gms/common/internal/i$d;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected final aZ(Landroid/os/IBinder;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/q$a;->bd(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/q;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/internal/i$d;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/i$d;-><init>(Lcom/google/android/gms/common/internal/i;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/q;Lcom/google/android/gms/common/internal/i$d;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GmsClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/i;->dm(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "GmsClient"

    const-string v2, "Remote exception occurred"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected abstract bO()Ljava/lang/String;
.end method

.method protected abstract bP()Ljava/lang/String;
.end method

.method protected varargs c([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public connect()V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/i;->WB:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/common/internal/i;->a(ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(ILandroid/os/IInterface;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wy:Lcom/google/android/gms/common/internal/i$e;

    if-eqz v0, :cond_2

    const-string v0, "GmsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->bO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wv:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->bO()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i;->Wy:Lcom/google/android/gms/common/internal/i$e;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->ie()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/k;->b(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/internal/i$e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/i$e;-><init>(Lcom/google/android/gms/common/internal/i;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wy:Lcom/google/android/gms/common/internal/i$e;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wv:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->bO()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i;->Wy:Lcom/google/android/gms/common/internal/i$e;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->ie()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/k;->a(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GmsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to connect to service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->bO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final dX()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/i;->WB:Z

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i;->Wx:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->Wx:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/i$b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/i$b;->jk()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v4}, Lcom/google/android/gms/common/internal/i;->a(ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wy:Lcom/google/android/gms/common/internal/i$e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wv:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->bO()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i;->Wy:Lcom/google/android/gms/common/internal/i$e;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->ie()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/k;->b(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/google/android/gms/common/internal/i;->Wy:Lcom/google/android/gms/common/internal/i$e;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dm(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/i;, "Lcom/google/android/gms/common/internal/i<TT;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "GmsClient:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "mStartServiceAction="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->bO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/common/internal/i;->Wz:I

    iget-object v3, p0, Lcom/google/android/gms/common/internal/i;->Ww:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mConnectState="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    packed-switch v2, :pswitch_data_0

    const-string v0, "UNKNOWN"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const-string v0, " mService="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v3, :cond_0

    const-string v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    const-string v0, "CONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "CONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "DISCONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "DISCONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->bP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->KE:Landroid/os/Looper;

    return-object v0
.end method

.method public hJ()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public iA()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/i;->WB:Z

    return v0
.end method

.method protected ie()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wu:Lcom/google/android/gms/common/internal/d;

    if-nez v0, :cond_0

    const-string v0, "GmsClient"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Wu:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d;->jb()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/i;->Wz:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConnecting()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/i;->Wz:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/i;, "Lcom/google/android/gms/common/internal/i<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Tj:Lcom/google/android/gms/common/internal/j;

    new-instance v1, Lcom/google/android/gms/common/internal/i$c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/internal/i$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/j;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/i;, "Lcom/google/android/gms/common/internal/i<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Tj:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/j;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public final jg()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->WA:[Ljava/lang/String;

    return-object v0
.end method

.method public final jh()Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->mQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/i;->Wz:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/i;->dX()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Ww:Landroid/os/IInterface;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Client is connected but service is null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/u;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Ww:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract q(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/i;, "Lcom/google/android/gms/common/internal/i<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Tj:Lcom/google/android/gms/common/internal/j;

    new-instance v1, Lcom/google/android/gms/common/internal/i$c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/internal/i$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/j;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/i;, "Lcom/google/android/gms/common/internal/i<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Tj:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/j;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/i;, "Lcom/google/android/gms/common/internal/i<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Tj:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/j;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/i;, "Lcom/google/android/gms/common/internal/i<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Tj:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/j;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/i;, "Lcom/google/android/gms/common/internal/i<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Tj:Lcom/google/android/gms/common/internal/j;

    new-instance v1, Lcom/google/android/gms/common/internal/i$c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/internal/i$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/j;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/i;, "Lcom/google/android/gms/common/internal/i<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->Tj:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/j;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method
