.class final Lcom/google/android/location/geofencer/service/t;
.super Lcom/google/android/location/geofencer/service/p;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/geofencer/service/k;


# direct methods
.method public constructor <init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V
    .locals 0

    .prologue
    .line 943
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/t;->a:Lcom/google/android/location/geofencer/service/k;

    .line 944
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/geofencer/service/p;-><init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V

    .line 945
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 997
    const-string v0, "NoGeofenceState"

    return-object v0
.end method

.method public final a(Landroid/os/Message;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 955
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/t;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v0, v0, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/h;->d()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "No geofences should be registered in NoGeofenceState."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/b;->a(ZLjava/lang/Object;)V

    .line 957
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 958
    const-string v0, "GeofencerStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "processMessage, current state=NoGeofenceState msg="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/location/geofencer/service/t;->a:Lcom/google/android/location/geofencer/service/k;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Lcom/google/android/location/geofencer/service/k;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 989
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/t;->b(Landroid/os/Message;)Z

    move-result v1

    :cond_1
    :goto_1
    :pswitch_1
    return v1

    :cond_2
    move v0, v2

    .line 955
    goto :goto_0

    .line 963
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/t;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0}, Lcom/google/android/location/geofencer/service/k;->k(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/af;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 964
    const-string v0, "GeofencerStateMachine"

    const-string v2, "Network location disabled."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/t;->a:Lcom/google/android/location/geofencer/service/k;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/t;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v2}, Lcom/google/android/location/geofencer/service/k;->o(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/q;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/service/k;->e(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V

    goto :goto_1

    .line 970
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/t;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0, p1}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/location/geofencer/service/k;Landroid/os/Message;)V

    .line 971
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/t;->a:Lcom/google/android/location/geofencer/service/k;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/t;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v2}, Lcom/google/android/location/geofencer/service/k;->l(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/s;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/service/k;->f(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V

    goto :goto_1

    .line 975
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/geofencer/service/am;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/location/geofencer/service/am;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 982
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/t;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/i;->e()V

    goto :goto_1

    .line 961
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 949
    invoke-super {p0}, Lcom/google/android/location/geofencer/service/p;->b()V

    .line 950
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/t;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v1, v0, Lcom/google/android/location/geofencer/service/i;->g:Lcom/google/android/location/geofencer/service/ac;

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/service/ac;->a()V

    iget-object v0, v0, Lcom/google/android/location/geofencer/service/i;->f:Lcom/google/android/location/i/a;

    invoke-virtual {v0}, Lcom/google/android/location/i/a;->a()V

    .line 951
    return-void
.end method
