.class final Lcom/google/android/location/geofencer/service/q;
.super Lcom/google/android/location/geofencer/service/p;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/geofencer/service/k;


# direct methods
.method public constructor <init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V
    .locals 0

    .prologue
    .line 889
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/q;->a:Lcom/google/android/location/geofencer/service/k;

    .line 890
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/geofencer/service/p;-><init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V

    .line 891
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 934
    const-string v0, "DisabledState"

    return-object v0
.end method

.method public final a(Landroid/os/Message;)Z
    .locals 6

    .prologue
    const/16 v5, 0x3e8

    const/4 v1, 0x1

    .line 901
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 902
    const-string v0, "GeofencerStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processMessage, current state=DisabledState msg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/location/geofencer/service/q;->a:Lcom/google/android/location/geofencer/service/k;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Lcom/google/android/location/geofencer/service/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 926
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/q;->b(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 907
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/q;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0}, Lcom/google/android/location/geofencer/service/k;->k(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/af;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    const-string v0, "GeofencerStateMachine"

    const-string v2, "Network location enabled."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/q;->a:Lcom/google/android/location/geofencer/service/k;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/q;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v2}, Lcom/google/android/location/geofencer/service/k;->n(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/t;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/service/k;->d(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V

    :cond_1
    move v0, v1

    .line 914
    goto :goto_0

    .line 916
    :pswitch_2
    const-string v0, "GeofencerStateMachine"

    const-string v2, "Ignoring addGeofence because network location is disabled."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/geofencer/service/a;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/location/geofencer/service/a;->a(Ljava/lang/Object;)V

    move v0, v1

    .line 919
    goto :goto_0

    .line 921
    :pswitch_3
    const-string v0, "GeofencerStateMachine"

    const-string v2, "Ignoring removeGeofence because network location is disabled."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/geofencer/service/am;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/location/geofencer/service/am;->a(Ljava/lang/Object;)V

    move v0, v1

    .line 924
    goto :goto_0

    .line 905
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 895
    invoke-super {p0}, Lcom/google/android/location/geofencer/service/p;->b()V

    .line 896
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/q;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v1, v0, Lcom/google/android/location/geofencer/service/i;->g:Lcom/google/android/location/geofencer/service/ac;

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/service/ac;->a()V

    iget-object v1, v0, Lcom/google/android/location/geofencer/service/i;->f:Lcom/google/android/location/i/a;

    invoke-virtual {v1}, Lcom/google/android/location/i/a;->a()V

    iget-object v0, v0, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/h;->b()V

    .line 897
    return-void
.end method
