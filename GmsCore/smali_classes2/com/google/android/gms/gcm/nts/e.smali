.class public final Lcom/google/android/gms/gcm/nts/e;
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
    .line 40
    new-instance v0, Lcom/google/android/gms/gcm/nts/f;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/nts/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/gcm/nts/e;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/android/gms/gcm/nts/e;->c:Ljava/util/Comparator;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/nts/e;->b:J

    .line 52
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 56
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/gcm/nts/e;->a:Z

    .line 58
    :cond_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/gcm/nts/k;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 62
    iget-wide v2, p1, Lcom/google/android/gms/gcm/nts/k;->e:J

    iget-wide v4, p0, Lcom/google/android/gms/gcm/nts/e;->b:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/gcm/nts/k;->a()Z

    move-result v3

    iget-boolean v2, p0, Lcom/google/android/gms/gcm/nts/e;->a:Z

    if-nez v2, :cond_1

    move v2, v1

    :goto_0
    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 64
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/gcm/nts/k;->a(I)V

    .line 70
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    .line 63
    goto :goto_0

    :cond_2
    move v0, v1

    .line 67
    goto :goto_1
.end method
