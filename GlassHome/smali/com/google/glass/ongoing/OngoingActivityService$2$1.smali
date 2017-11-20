.class Lcom/google/glass/ongoing/OngoingActivityService$2$1;
.super Ljava/lang/Object;
.source "OngoingActivityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/ongoing/OngoingActivityService$2;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/ongoing/OngoingActivityService$2;


# direct methods
.method constructor <init>(Lcom/google/glass/ongoing/OngoingActivityService$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/ongoing/OngoingActivityService$2;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/glass/ongoing/OngoingActivityService$2$1;->this$1:Lcom/google/glass/ongoing/OngoingActivityService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityService$2$1;->this$1:Lcom/google/glass/ongoing/OngoingActivityService$2;

    iget-object v0, v0, Lcom/google/glass/ongoing/OngoingActivityService$2;->this$0:Lcom/google/glass/ongoing/OngoingActivityService;

    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityService$2$1;->this$1:Lcom/google/glass/ongoing/OngoingActivityService$2;

    iget v1, v1, Lcom/google/glass/ongoing/OngoingActivityService$2;->val$pid:I

    invoke-static {v0, v1}, Lcom/google/glass/ongoing/OngoingActivityService;->access$200(Lcom/google/glass/ongoing/OngoingActivityService;I)V

    .line 163
    return-void
.end method
