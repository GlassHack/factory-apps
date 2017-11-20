.class Lcom/google/glass/camera/BaseTakePictureActivity$2;
.super Ljava/lang/Object;
.source "BaseTakePictureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/BaseTakePictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/BaseTakePictureActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/BaseTakePictureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/BaseTakePictureActivity;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$000(Lcom/google/glass/camera/BaseTakePictureActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "viewfinder session times out, finishing activity now."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$202(Lcom/google/glass/camera/BaseTakePictureActivity;Z)Z

    .line 123
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$2;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseTakePictureActivity;->finish()V

    .line 124
    return-void
.end method
