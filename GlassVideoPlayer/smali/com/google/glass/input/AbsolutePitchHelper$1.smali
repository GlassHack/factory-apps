.class Lcom/google/glass/input/AbsolutePitchHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/AbsolutePitchHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/input/AbsolutePitchHelper;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/input/AbsolutePitchHelper$1;->this$0:Lcom/google/glass/input/AbsolutePitchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/input/AbsolutePitchHelper$1;->this$0:Lcom/google/glass/input/AbsolutePitchHelper;

    iget-object v1, p0, Lcom/google/glass/input/AbsolutePitchHelper$1;->this$0:Lcom/google/glass/input/AbsolutePitchHelper;

    invoke-static {v1}, Lcom/google/glass/input/AbsolutePitchHelper;->access$100(Lcom/google/glass/input/AbsolutePitchHelper;)Landroid/hardware/SensorManager;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/google/glass/input/OrientationHelper;->getPreferredSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/input/AbsolutePitchHelper;->access$002(Lcom/google/glass/input/AbsolutePitchHelper;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;

    .line 70
    return-void
.end method
