.class final Lcom/google/android/location/collectionlib/af;
.super Lcom/google/android/location/collectionlib/bz;
.source "SourceFile"


# instance fields
.field final a:Landroid/telephony/TelephonyManager;

.field volatile b:I

.field private final g:Landroid/telephony/PhoneStateListener;

.field private final h:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/collectionlib/bz;-><init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V

    .line 24
    new-instance v0, Lcom/google/android/location/collectionlib/ag;

    invoke-direct {v0, p0}, Lcom/google/android/location/collectionlib/ag;-><init>(Lcom/google/android/location/collectionlib/af;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/af;->g:Landroid/telephony/PhoneStateListener;

    .line 47
    const/16 v0, -0x270f

    iput v0, p0, Lcom/google/android/location/collectionlib/af;->b:I

    .line 50
    new-instance v0, Lcom/google/android/location/collectionlib/ah;

    invoke-direct {v0, p0}, Lcom/google/android/location/collectionlib/ah;-><init>(Lcom/google/android/location/collectionlib/af;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/af;->h:Ljava/lang/Runnable;

    .line 66
    invoke-static {p2}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iput-object p2, p0, Lcom/google/android/location/collectionlib/af;->a:Landroid/telephony/TelephonyManager;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/af;Landroid/telephony/CellLocation;)V
    .locals 8

    .prologue
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/af;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/location/collectionlib/af;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/google/android/location/collectionlib/af;->b:I

    iget-object v3, p0, Lcom/google/android/location/collectionlib/af;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v5

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/location/collectionlib/ak;->a(ILjava/lang/String;Landroid/telephony/CellLocation;ILjava/util/List;J)V

    sget-object v0, Lcom/google/android/location/collectionlib/cb;->b:Lcom/google/android/location/collectionlib/cb;

    invoke-virtual {p0, v0, v6, v7}, Lcom/google/android/location/collectionlib/af;->b(Lcom/google/android/location/collectionlib/cb;J)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/af;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/ak;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    iget-object v0, p0, Lcom/google/android/location/collectionlib/af;->a:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/af;->g:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x111

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 77
    iget-object v0, p0, Lcom/google/android/location/collectionlib/af;->e:Lcom/google/android/location/collectionlib/ao;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/android/location/collectionlib/af;->e:Lcom/google/android/location/collectionlib/ao;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/ao;->c()V

    .line 80
    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/location/collectionlib/af;->a:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/af;->g:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 85
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/af;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/location/collectionlib/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/location/collectionlib/af;->e:Lcom/google/android/location/collectionlib/ao;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/android/location/collectionlib/af;->e:Lcom/google/android/location/collectionlib/ao;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/ao;->b()V

    .line 89
    :cond_0
    return-void
.end method
