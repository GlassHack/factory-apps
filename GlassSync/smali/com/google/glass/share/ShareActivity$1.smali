.class Lcom/google/glass/share/ShareActivity$1;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Lcom/google/glass/voice/ActionController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/share/ShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/share/ShareActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/share/ShareActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/share/ShareActivity;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/glass/share/ShareActivity$1;->this$0:Lcom/google/glass/share/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCanceled()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public onActionCompleted(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity$1;->this$0:Lcom/google/glass/share/ShareActivity;

    const-string v1, "annotation_result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/share/ShareActivity;->access$000(Lcom/google/glass/share/ShareActivity;Ljava/lang/String;)V

    .line 91
    return-void
.end method
