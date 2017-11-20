.class Lcom/google/glass/location/GlassLocationManager$1;
.super Landroid/os/Handler;
.source "GlassLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/location/GlassLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/location/GlassLocationManager;


# direct methods
.method constructor <init>(Lcom/google/glass/location/GlassLocationManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/location/GlassLocationManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/glass/location/GlassLocationManager$1;->this$0:Lcom/google/glass/location/GlassLocationManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager$1;->this$0:Lcom/google/glass/location/GlassLocationManager;

    invoke-static {v0, p1}, Lcom/google/glass/location/GlassLocationManager;->access$000(Lcom/google/glass/location/GlassLocationManager;Landroid/os/Message;)V

    .line 156
    return-void
.end method
