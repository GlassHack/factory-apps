.class Lcom/google/glass/maps/MapHelper$1;
.super Landroid/os/Handler;
.source "MapHelper.java"


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
.method constructor <init>(Lcom/google/glass/maps/MapHelper;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/maps/MapHelper;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/glass/maps/MapHelper$1;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper$1;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-static {v0, p1}, Lcom/google/glass/maps/MapHelper;->access$200(Lcom/google/glass/maps/MapHelper;Landroid/os/Message;)V

    .line 179
    return-void
.end method
