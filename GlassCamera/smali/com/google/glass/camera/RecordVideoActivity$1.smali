.class Lcom/google/glass/camera/RecordVideoActivity$1;
.super Ljava/lang/Object;
.source "RecordVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/RecordVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/RecordVideoActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/RecordVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/RecordVideoActivity;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/glass/camera/RecordVideoActivity$1;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity$1;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/RecordVideoActivity;->finishAndTurnScreenOffIfRequested()V

    .line 114
    return-void
.end method
