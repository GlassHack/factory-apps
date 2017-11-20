.class Lcom/google/glass/logging/GlassUserEventService$3;
.super Ljava/lang/Object;
.source "GlassUserEventService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/GlassUserEventService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/GlassUserEventService;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/GlassUserEventService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/logging/GlassUserEventService;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/glass/logging/GlassUserEventService$3;->this$0:Lcom/google/glass/logging/GlassUserEventService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/glass/logging/GlassUserEventService$3;->this$0:Lcom/google/glass/logging/GlassUserEventService;

    invoke-static {v0}, Lcom/google/glass/logging/GlassUserEventService;->access$000(Lcom/google/glass/logging/GlassUserEventService;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Performing read of framework event logs."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/google/glass/logging/GlassUserEventService$3;->this$0:Lcom/google/glass/logging/GlassUserEventService;

    invoke-static {v0}, Lcom/google/glass/logging/GlassUserEventService;->access$200(Lcom/google/glass/logging/GlassUserEventService;)V

    .line 232
    return-void
.end method
