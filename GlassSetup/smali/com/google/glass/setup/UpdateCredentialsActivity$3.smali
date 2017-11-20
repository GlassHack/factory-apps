.class Lcom/google/glass/setup/UpdateCredentialsActivity$3;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "UpdateCredentialsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/UpdateCredentialsActivity;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/UpdateCredentialsActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/UpdateCredentialsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/UpdateCredentialsActivity;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/glass/setup/UpdateCredentialsActivity$3;->this$0:Lcom/google/glass/setup/UpdateCredentialsActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/glass/setup/UpdateCredentialsActivity$3;->this$0:Lcom/google/glass/setup/UpdateCredentialsActivity;

    invoke-virtual {v0}, Lcom/google/glass/setup/UpdateCredentialsActivity;->finish()V

    .line 162
    return-void
.end method
