.class final Lcom/google/android/location/fused/ba;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/az;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/az;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/location/fused/ba;->a:Lcom/google/android/location/fused/az;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/location/fused/ba;->a:Lcom/google/android/location/fused/az;

    iget-object v0, v0, Lcom/google/android/location/fused/az;->c:Lcom/google/android/location/fused/bb;

    .line 68
    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/google/android/location/fused/ba;->a:Lcom/google/android/location/fused/az;

    iget-object v1, v1, Lcom/google/android/location/fused/az;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mock_location"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/location/fused/bb;->b(Z)V

    .line 71
    :cond_0
    return-void
.end method
