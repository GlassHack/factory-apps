.class final Lcom/google/android/location/collectionlib/ag;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/af;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/af;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/android/location/collectionlib/ag;->a:Lcom/google/android/location/collectionlib/af;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ag;->a:Lcom/google/android/location/collectionlib/af;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/af;->f()V

    .line 28
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ag;->a:Lcom/google/android/location/collectionlib/af;

    invoke-static {v0, p1}, Lcom/google/android/location/collectionlib/af;->a(Lcom/google/android/location/collectionlib/af;Landroid/telephony/CellLocation;)V

    .line 29
    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ag;->a:Lcom/google/android/location/collectionlib/af;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/af;->f()V

    .line 37
    iget-object v1, p0, Lcom/google/android/location/collectionlib/ag;->a:Lcom/google/android/location/collectionlib/af;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    :goto_0
    iput v0, v1, Lcom/google/android/location/collectionlib/af;->b:I

    .line 39
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ag;->a:Lcom/google/android/location/collectionlib/af;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/ag;->a:Lcom/google/android/location/collectionlib/af;

    iget-object v1, v1, Lcom/google/android/location/collectionlib/af;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/collectionlib/af;->a(Lcom/google/android/location/collectionlib/af;Landroid/telephony/CellLocation;)V

    .line 40
    return-void

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    goto :goto_0
.end method
