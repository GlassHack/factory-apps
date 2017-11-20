.class Lcom/google/glass/home/timeline/PreloadAttachmentTask$1;
.super Ljava/lang/Object;
.source "PreloadAttachmentTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/PreloadAttachmentTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/PreloadAttachmentTask;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/PreloadAttachmentTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/PreloadAttachmentTask;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/glass/home/timeline/PreloadAttachmentTask$1;->this$0:Lcom/google/glass/home/timeline/PreloadAttachmentTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/home/timeline/PreloadAttachmentTask$1;->this$0:Lcom/google/glass/home/timeline/PreloadAttachmentTask;

    invoke-static {v0}, Lcom/google/glass/home/timeline/PreloadAttachmentTask;->access$000(Lcom/google/glass/home/timeline/PreloadAttachmentTask;)Lcom/google/glass/util/Condition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/Condition;->set()V

    .line 37
    return-void
.end method
