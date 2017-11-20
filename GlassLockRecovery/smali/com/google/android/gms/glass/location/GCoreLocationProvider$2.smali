.class Lcom/google/android/gms/glass/location/GCoreLocationProvider$2;
.super Ljava/lang/Object;
.source "GCoreLocationProvider.java"

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/glass/location/GCoreLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gms/glass/location/GCoreLocationProvider;


# direct methods
.method constructor <init>(Lcom/google/android/gms/glass/location/GCoreLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/gms/glass/location/GCoreLocationProvider;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$2;->this$0:Lcom/google/android/gms/glass/location/GCoreLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 162
    invoke-static {}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Could not connect to Google Play Services location services: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    return-void
.end method
