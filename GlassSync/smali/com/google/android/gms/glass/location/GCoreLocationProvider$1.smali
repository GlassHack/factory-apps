.class Lcom/google/android/gms/glass/location/GCoreLocationProvider$1;
.super Ljava/lang/Object;
.source "GCoreLocationProvider.java"

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;


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
    .line 127
    iput-object p1, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$1;->this$0:Lcom/google/android/gms/glass/location/GCoreLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-static {}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Connected to Google Play Services location services"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v2, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$1;->this$0:Lcom/google/android/gms/glass/location/GCoreLocationProvider;

    iget-object v2, v2, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->pendingLocationUpdateRequests:Ljava/util/concurrent/ConcurrentMap;

    .line 135
    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 136
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;

    .line 138
    .local v1, "params":Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;
    invoke-static {v1}, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->access$300(Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$1;->this$0:Lcom/google/android/gms/glass/location/GCoreLocationProvider;

    invoke-static {v2}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->access$500(Lcom/google/android/gms/glass/location/GCoreLocationProvider;)Lcom/google/android/gms/location/LocationClient;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->access$400(Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->access$300(Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/location/LocationClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    .line 146
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$1;->this$0:Lcom/google/android/gms/glass/location/GCoreLocationProvider;

    .line 147
    invoke-static {v1}, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->access$400(Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->access$700(Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;)Lcom/google/android/gms/location/LocationListener;

    move-result-object v4

    invoke-static {v1}, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->access$300(Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 146
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->access$800(Lcom/google/android/gms/glass/location/GCoreLocationProvider;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->access$600(Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;)Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$1;->this$0:Lcom/google/android/gms/glass/location/GCoreLocationProvider;

    invoke-static {v2}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->access$500(Lcom/google/android/gms/glass/location/GCoreLocationProvider;)Lcom/google/android/gms/location/LocationClient;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->access$400(Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->access$700(Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;)Lcom/google/android/gms/location/LocationListener;

    move-result-object v4

    invoke-static {v1}, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->access$600(Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;)Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/location/LocationClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_1

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$1;->this$0:Lcom/google/android/gms/glass/location/GCoreLocationProvider;

    invoke-static {v2}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->access$500(Lcom/google/android/gms/glass/location/GCoreLocationProvider;)Lcom/google/android/gms/location/LocationClient;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->access$400(Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->access$700(Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;)Lcom/google/android/gms/location/LocationListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/location/LocationClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V

    goto :goto_1

    .line 149
    .end local v1    # "params":Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$1;->this$0:Lcom/google/android/gms/glass/location/GCoreLocationProvider;

    iget-object v2, v2, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->pendingLocationUpdateRequests:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 150
    return-void
.end method

.method public onDisconnected()V
    .locals 3

    .prologue
    .line 154
    invoke-static {}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Disconnected from Google Play Services location services"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    return-void
.end method
