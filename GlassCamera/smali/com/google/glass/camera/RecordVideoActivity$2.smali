.class Lcom/google/glass/camera/RecordVideoActivity$2;
.super Ljava/lang/Object;
.source "RecordVideoActivity.java"

# interfaces
.implements Lcom/google/glass/timeline/TimelineItemDeletedListener;


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
    .line 121
    iput-object p1, p0, Lcom/google/glass/camera/RecordVideoActivity$2;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmDelete()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public onDeleteCanceled()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity$2;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    iget-object v1, p0, Lcom/google/glass/camera/RecordVideoActivity$2;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    invoke-static {v1}, Lcom/google/glass/camera/RecordVideoActivity;->access$000(Lcom/google/glass/camera/RecordVideoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/RecordVideoActivity$2;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    invoke-static {v2}, Lcom/google/glass/camera/RecordVideoActivity;->access$100(Lcom/google/glass/camera/RecordVideoActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/RecordVideoActivity;->listenForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 136
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity$2;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/camera/RecordVideoActivity;->access$202(Lcom/google/glass/camera/RecordVideoActivity;Z)Z

    .line 137
    return-void
.end method

.method public onDeleted()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity$2;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/RecordVideoActivity;->finishAndTurnScreenOffIfRequested()V

    .line 129
    return-void
.end method
