.class public final Lcom/google/android/gms/gcm/nts/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/gcm/nts/d;


# static fields
.field private static final c:Ljava/util/Comparator;


# instance fields
.field private a:Z

.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/google/android/gms/gcm/nts/h;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/nts/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/gcm/nts/g;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/google/android/gms/gcm/nts/g;->c:Ljava/util/Comparator;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/nts/g;->b:J

    .line 102
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 106
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/gcm/nts/g;->a:Z

    .line 108
    :cond_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/gcm/nts/k;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 112
    iget-boolean v1, p0, Lcom/google/android/gms/gcm/nts/g;->a:Z

    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p1, Lcom/google/android/gms/gcm/nts/k;->f:J

    iget-wide v4, p0, Lcom/google/android/gms/gcm/nts/g;->b:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
