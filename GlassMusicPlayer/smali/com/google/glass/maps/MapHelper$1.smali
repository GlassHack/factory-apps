.class Lcom/google/glass/maps/MapHelper$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/MapHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/MapHelper;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/glass/maps/MapHelper$1;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper$1;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-static {v0, p1}, Lcom/google/glass/maps/MapHelper;->access$200(Lcom/google/glass/maps/MapHelper;Landroid/os/Message;)V

    .line 179
    return-void
.end method
