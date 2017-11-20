.class final Lcom/google/android/location/geofencer/service/s;
.super Lcom/google/android/location/geofencer/service/p;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/geofencer/service/k;


# direct methods
.method public constructor <init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V
    .locals 0

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/s;->a:Lcom/google/android/location/geofencer/service/k;

    .line 1007
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/geofencer/service/p;-><init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V

    .line 1008
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1038
    const-string v0, "HasGeofenceState"

    return-object v0
.end method

.method public final a(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1012
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1030
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/s;->b(Landroid/os/Message;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 1014
    :sswitch_0
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/s;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v1}, Lcom/google/android/location/geofencer/service/k;->k(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/service/af;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1015
    const-string v1, "GeofencerStateMachine"

    const-string v2, "Network location disabled."

    invoke-static {v1, v2}, Lcom/google/android/location/geofencer/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/s;->a:Lcom/google/android/location/geofencer/service/k;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/s;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v2}, Lcom/google/android/location/geofencer/service/k;->o(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/q;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/geofencer/service/k;->g(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V

    goto :goto_0

    .line 1022
    :sswitch_1
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/s;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v1, p1}, Lcom/google/android/location/geofencer/service/k;->b(Lcom/google/android/location/geofencer/service/k;Landroid/os/Message;)V

    .line 1026
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/s;->a:Lcom/google/android/location/geofencer/service/k;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/s;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v2}, Lcom/google/android/location/geofencer/service/i;->f()Lcom/google/android/location/i/e;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/location/geofencer/service/s;->a(Lcom/google/android/location/i/e;)Lcom/google/android/gms/common/util/a/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/geofencer/service/k;->h(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V

    .line 1027
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/s;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v1}, Lcom/google/android/location/geofencer/service/k;->p(Lcom/google/android/location/geofencer/service/k;)V

    goto :goto_0

    .line 1012
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
