.class Lcom/google/glass/location/LocationService$1;
.super Landroid/os/Handler;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/location/LocationService;


# direct methods
.method constructor <init>(Lcom/google/glass/location/LocationService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/location/LocationService;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/glass/location/LocationService$1;->this$0:Lcom/google/glass/location/LocationService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/glass/location/LocationService$1;->this$0:Lcom/google/glass/location/LocationService;

    invoke-static {v0, p1}, Lcom/google/glass/location/LocationService;->access$300(Lcom/google/glass/location/LocationService;Landroid/os/Message;)V

    .line 155
    return-void
.end method