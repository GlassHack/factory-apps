.class Lcom/google/glass/voice/VoiceActionDialog$Provider$1;
.super Ljava/lang/Object;
.source "VoiceActionDialog.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceActionDialog$Provider;->from(Landroid/content/Context;Lcom/google/glass/voice/ActionController;Lcom/google/glass/voice/ActionController$Callback;)Lcom/google/glass/voice/VoiceActionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/voice/VoiceActionDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceActionDialog$Provider;

.field final synthetic val$actionController:Lcom/google/glass/voice/ActionController;

.field final synthetic val$callback:Lcom/google/glass/voice/ActionController$Callback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceActionDialog$Provider;Landroid/content/Context;Lcom/google/glass/voice/ActionController;Lcom/google/glass/voice/ActionController$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceActionDialog$Provider;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/glass/voice/VoiceActionDialog$Provider$1;->this$0:Lcom/google/glass/voice/VoiceActionDialog$Provider;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceActionDialog$Provider$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/voice/VoiceActionDialog$Provider$1;->val$actionController:Lcom/google/glass/voice/ActionController;

    iput-object p4, p0, Lcom/google/glass/voice/VoiceActionDialog$Provider$1;->val$callback:Lcom/google/glass/voice/ActionController$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/voice/VoiceActionDialog;
    .locals 4

    .prologue
    .line 155
    new-instance v0, Lcom/google/glass/voice/VoiceActionDialog;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceActionDialog$Provider$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceActionDialog$Provider$1;->val$actionController:Lcom/google/glass/voice/ActionController;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceActionDialog$Provider$1;->val$callback:Lcom/google/glass/voice/ActionController$Callback;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceActionDialog;-><init>(Landroid/content/Context;Lcom/google/glass/voice/ActionController;Lcom/google/glass/voice/ActionController$Callback;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceActionDialog$Provider$1;->get()Lcom/google/glass/voice/VoiceActionDialog;

    move-result-object v0

    return-object v0
.end method
