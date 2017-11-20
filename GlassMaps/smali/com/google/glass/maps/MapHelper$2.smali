.class Lcom/google/glass/maps/MapHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/MapHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/MapHelper;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/glass/maps/MapHelper$2;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper$2;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-static {v0, p1, p2}, Lcom/google/glass/maps/MapHelper;->access$400(Lcom/google/glass/maps/MapHelper;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 190
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper$2;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-static {v0}, Lcom/google/glass/maps/MapHelper;->access$300(Lcom/google/glass/maps/MapHelper;)V

    .line 186
    return-void
.end method
