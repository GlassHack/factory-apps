.class Lcom/google/glass/camera/TakePictureActivity$2;
.super Ljava/lang/Object;
.source "TakePictureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/TakePictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/TakePictureActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/TakePictureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/glass/camera/TakePictureActivity$2;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$2;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/TakePictureActivity;->finishAndTurnScreenOffIfRequested()V

    .line 156
    return-void
.end method
