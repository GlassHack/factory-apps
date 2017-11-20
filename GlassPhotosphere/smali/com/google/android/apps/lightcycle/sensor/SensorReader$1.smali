.class Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;
.super Ljava/lang/Object;
.source "SensorReader.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/sensor/SensorReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 439
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 443
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 444
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v3, p1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$000(Lcom/google/android/apps/lightcycle/sensor/SensorReader;Landroid/hardware/SensorEvent;)V

    .line 445
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$100(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 446
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$200(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAcc([FJ)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 449
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$300(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)[F

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v8

    aput v4, v3, v8

    .line 450
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$300(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)[F

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    aput v4, v3, v6

    .line 451
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$300(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)[F

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v7

    aput v4, v3, v7

    goto :goto_0

    .line 452
    :cond_2
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 454
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v3, v8

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v5}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$400(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)[F

    move-result-object v5

    aget v5, v5, v8

    sub-float/2addr v4, v5

    aput v4, v3, v8

    .line 455
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v3, v6

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v5}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$400(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)[F

    move-result-object v5

    aget v5, v5, v6

    sub-float/2addr v4, v5

    aput v4, v3, v6

    .line 456
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v3, v7

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v5}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$400(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)[F

    move-result-object v5

    aget v5, v5, v7

    sub-float/2addr v4, v5

    aput v4, v3, v7

    .line 458
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v8

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v8

    mul-float v0, v3, v4

    .line 459
    .local v0, "rad1Squared":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    mul-float v1, v3, v4

    .line 460
    .local v1, "rad2Squared":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v7

    mul-float v2, v3, v4

    .line 461
    .local v2, "rad3Squared":F
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    add-float v4, v0, v1

    add-float/2addr v4, v2

    invoke-static {v3, v4}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$502(Lcom/google/android/apps/lightcycle/sensor/SensorReader;F)F

    .line 463
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$600(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Lcom/google/android/apps/lightcycle/util/Callback;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 464
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$600(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Lcom/google/android/apps/lightcycle/util/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v4}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$500(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 469
    :cond_3
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v3, p1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$700(Lcom/google/android/apps/lightcycle/sensor/SensorReader;Landroid/hardware/SensorEvent;)V

    .line 472
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$100(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 473
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$200(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processGyro([FJ)V

    goto/16 :goto_0
.end method
