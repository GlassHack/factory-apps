.class Lcom/google/glass/home/voice/NoInputActivity$1;
.super Ljava/lang/Object;
.source "NoInputActivity.java"

# interfaces
.implements Lcom/google/glass/voice/ActionController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/NoInputActivity;->onCreateInternal(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/NoInputActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/NoInputActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/voice/NoInputActivity;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/glass/home/voice/NoInputActivity$1;->this$0:Lcom/google/glass/home/voice/NoInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCanceled()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/home/voice/NoInputActivity$1;->this$0:Lcom/google/glass/home/voice/NoInputActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/NoInputActivity;->finishAndTurnScreenOffIfRequested()V

    .line 34
    return-void
.end method

.method public onActionCompleted(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/home/voice/NoInputActivity$1;->this$0:Lcom/google/glass/home/voice/NoInputActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/NoInputActivity;->finish()V

    .line 29
    return-void
.end method
