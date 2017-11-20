.class Lcom/google/glass/location/GlassLocationManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/google/glass/location/GlassLocationManager;


# direct methods
.method constructor <init>(Lcom/google/glass/location/GlassLocationManager;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/glass/location/GlassLocationManager$2;->this$0:Lcom/google/glass/location/GlassLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager$2;->this$0:Lcom/google/glass/location/GlassLocationManager;

    invoke-static {v0, p1, p2}, Lcom/google/glass/location/GlassLocationManager;->access$200(Lcom/google/glass/location/GlassLocationManager;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 168
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager$2;->this$0:Lcom/google/glass/location/GlassLocationManager;

    invoke-static {v0}, Lcom/google/glass/location/GlassLocationManager;->access$100(Lcom/google/glass/location/GlassLocationManager;)V

    .line 163
    return-void
.end method
