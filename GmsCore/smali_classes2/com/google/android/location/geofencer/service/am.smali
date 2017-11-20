.class public final Lcom/google/android/location/geofencer/service/am;
.super Lcom/google/android/location/geofencer/service/e;
.source "SourceFile"


# instance fields
.field final a:I

.field public final b:Lcom/google/android/location/geofencer/service/f;

.field final c:Ljava/lang/String;

.field final e:Landroid/app/PendingIntent;

.field final f:[Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/app/PendingIntent;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/location/geofencer/service/f;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/location/geofencer/service/e;-><init>(I)V

    .line 60
    iput p1, p0, Lcom/google/android/location/geofencer/service/am;->a:I

    .line 61
    iput-object p4, p0, Lcom/google/android/location/geofencer/service/am;->c:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/google/android/location/geofencer/service/am;->e:Landroid/app/PendingIntent;

    .line 63
    iput-object p3, p0, Lcom/google/android/location/geofencer/service/am;->f:[Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lcom/google/android/location/geofencer/service/am;->b:Lcom/google/android/location/geofencer/service/f;

    .line 65
    return-void
.end method

.method static a(Ljava/lang/String;Lcom/google/android/location/geofencer/service/f;)Lcom/google/android/location/geofencer/service/am;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/google/android/location/geofencer/service/am;

    const/4 v1, 0x1

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/geofencer/service/am;-><init>(ILandroid/app/PendingIntent;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/location/geofencer/service/f;)V

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/am;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/am;->b:Lcom/google/android/location/geofencer/service/f;

    if-eqz v1, :cond_0

    .line 71
    iget v1, p0, Lcom/google/android/location/geofencer/service/am;->a:I

    packed-switch v1, :pswitch_data_0

    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remove action "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/location/geofencer/service/am;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/am;->b:Lcom/google/android/location/geofencer/service/f;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/am;->e:Landroid/app/PendingIntent;

    invoke-interface {v1, v0, v2}, Lcom/google/android/location/geofencer/service/f;->a(ILandroid/app/PendingIntent;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 77
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/am;->b:Lcom/google/android/location/geofencer/service/f;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/am;->f:[Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/google/android/location/geofencer/service/f;->b(I[Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/am;->b:Lcom/google/android/location/geofencer/service/f;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/am;->c:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/android/location/geofencer/service/f;->a(I)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoveGeofenceRequest [mRemoveAction="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/location/geofencer/service/am;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/am;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/am;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/am;->f:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
