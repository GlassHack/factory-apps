.class Lcom/google/glass/maps/service/MapRenderingService$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/service/MapRenderingService;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/service/MapRenderingService;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/glass/maps/service/MapRenderingService$1;->this$0:Lcom/google/glass/maps/service/MapRenderingService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/glass/maps/service/MapRenderingService$1;->this$0:Lcom/google/glass/maps/service/MapRenderingService;

    invoke-static {v0, p1}, Lcom/google/glass/maps/service/MapRenderingService;->access$400(Lcom/google/glass/maps/service/MapRenderingService;Landroid/os/Message;)V

    .line 175
    return-void
.end method
