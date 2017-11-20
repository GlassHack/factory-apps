.class Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "LookAtScreenPlaypenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->showConfirmationMessageThenFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity$1;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity$1;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->finish()V

    .line 113
    return-void
.end method
