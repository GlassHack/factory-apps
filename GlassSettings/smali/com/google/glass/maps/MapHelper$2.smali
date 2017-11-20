.class Lcom/google/glass/maps/MapHelper$2;
.super Ljava/lang/Object;
.source "MapHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/maps/MapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/MapHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/MapHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/maps/MapHelper;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/glass/maps/MapHelper$2;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper$2;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-static {v0, p1, p2}, Lcom/google/glass/maps/MapHelper;->access$400(Lcom/google/glass/maps/MapHelper;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 190
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper$2;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-static {v0}, Lcom/google/glass/maps/MapHelper;->access$300(Lcom/google/glass/maps/MapHelper;)V

    .line 186
    return-void
.end method
