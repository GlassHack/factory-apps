.class Lcom/google/glass/input/AbsolutePitchHelper$2;
.super Ljava/lang/Object;
.source "AbsolutePitchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/input/AbsolutePitchHelper;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/AbsolutePitchHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/input/AbsolutePitchHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/input/AbsolutePitchHelper;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/glass/input/AbsolutePitchHelper$2;->this$0:Lcom/google/glass/input/AbsolutePitchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 80
    iget-object v1, p0, Lcom/google/glass/input/AbsolutePitchHelper$2;->this$0:Lcom/google/glass/input/AbsolutePitchHelper;

    invoke-static {v1}, Lcom/google/glass/input/AbsolutePitchHelper;->access$200(Lcom/google/glass/input/AbsolutePitchHelper;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 81
    iget-object v1, p0, Lcom/google/glass/input/AbsolutePitchHelper$2;->this$0:Lcom/google/glass/input/AbsolutePitchHelper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/glass/input/AbsolutePitchHelper;->access$202(Lcom/google/glass/input/AbsolutePitchHelper;Z)Z

    .line 84
    iget-object v1, p0, Lcom/google/glass/input/AbsolutePitchHelper$2;->this$0:Lcom/google/glass/input/AbsolutePitchHelper;

    new-instance v2, Landroid/os/HandlerThread;

    invoke-static {}, Lcom/google/glass/input/AbsolutePitchHelper;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/sensorThread"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/google/glass/input/AbsolutePitchHelper;->access$302(Lcom/google/glass/input/AbsolutePitchHelper;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 85
    iget-object v1, p0, Lcom/google/glass/input/AbsolutePitchHelper$2;->this$0:Lcom/google/glass/input/AbsolutePitchHelper;

    invoke-static {v1}, Lcom/google/glass/input/AbsolutePitchHelper;->access$300(Lcom/google/glass/input/AbsolutePitchHelper;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/input/AbsolutePitchHelper$2;->this$0:Lcom/google/glass/input/AbsolutePitchHelper;

    invoke-static {v1}, Lcom/google/glass/input/AbsolutePitchHelper;->access$300(Lcom/google/glass/input/AbsolutePitchHelper;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 87
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/google/glass/input/AbsolutePitchHelper$2;->this$0:Lcom/google/glass/input/AbsolutePitchHelper;

    invoke-static {v1}, Lcom/google/glass/input/AbsolutePitchHelper;->access$100(Lcom/google/glass/input/AbsolutePitchHelper;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/input/AbsolutePitchHelper$2;->this$0:Lcom/google/glass/input/AbsolutePitchHelper;

    iget-object v3, p0, Lcom/google/glass/input/AbsolutePitchHelper$2;->this$0:Lcom/google/glass/input/AbsolutePitchHelper;

    .line 88
    invoke-static {v3}, Lcom/google/glass/input/AbsolutePitchHelper;->access$000(Lcom/google/glass/input/AbsolutePitchHelper;)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x2

    .line 87
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 89
    return-void
.end method
