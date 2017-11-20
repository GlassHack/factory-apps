.class Lcom/google/glass/location/GlassLocationManager$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/location/GlassLocationManager;


# direct methods
.method constructor <init>(Lcom/google/glass/location/GlassLocationManager;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/glass/location/GlassLocationManager$1;->this$0:Lcom/google/glass/location/GlassLocationManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager$1;->this$0:Lcom/google/glass/location/GlassLocationManager;

    invoke-static {v0, p1}, Lcom/google/glass/location/GlassLocationManager;->access$000(Lcom/google/glass/location/GlassLocationManager;Landroid/os/Message;)V

    .line 156
    return-void
.end method
