.class public final Lcom/google/android/location/fused/az;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/database/ContentObserver;

.field volatile c:Lcom/google/android/location/fused/bb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/google/android/location/fused/ba;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/location/fused/ah;->a()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/fused/ba;-><init>(Lcom/google/android/location/fused/az;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/location/fused/az;->b:Landroid/database/ContentObserver;

    .line 30
    iput-object p1, p0, Lcom/google/android/location/fused/az;->a:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/location/fused/bb;)V
    .locals 4

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/location/fused/az;->c:Lcom/google/android/location/fused/bb;

    .line 48
    iget-object v0, p0, Lcom/google/android/location/fused/az;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mock_location"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/location/fused/az;->b:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 52
    return-void
.end method
