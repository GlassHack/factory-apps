.class Lcom/google/glass/setup/SetupActivity$2;
.super Ljava/lang/Object;
.source "SetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/SetupActivity;->onCreateInternal(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/SetupActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/SetupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/SetupActivity;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/glass/setup/SetupActivity$2;->this$0:Lcom/google/glass/setup/SetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$2;->this$0:Lcom/google/glass/setup/SetupActivity;

    invoke-static {v0}, Lcom/google/glass/setup/SetupActivity;->access$400(Lcom/google/glass/setup/SetupActivity;)V

    .line 171
    return-void
.end method
