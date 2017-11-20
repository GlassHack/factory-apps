.class final Lcom/google/android/location/collectionlib/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/af;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/af;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/location/collectionlib/ah;->a:Lcom/google/android/location/collectionlib/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ah;->a:Lcom/google/android/location/collectionlib/af;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    invoke-virtual {v0, p0}, Lcom/google/android/location/collectionlib/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ah;->a:Lcom/google/android/location/collectionlib/af;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/af;->f()V

    .line 55
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ah;->a:Lcom/google/android/location/collectionlib/af;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/ah;->a:Lcom/google/android/location/collectionlib/af;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/af;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/collectionlib/af;->a(Lcom/google/android/location/collectionlib/af;Landroid/telephony/CellLocation;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ah;->a:Lcom/google/android/location/collectionlib/af;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/location/collectionlib/ak;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    return-void
.end method
