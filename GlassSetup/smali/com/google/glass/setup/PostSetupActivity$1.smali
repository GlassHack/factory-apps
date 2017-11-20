.class Lcom/google/glass/setup/PostSetupActivity$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "PostSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/PostSetupActivity;->onResumeInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/PostSetupActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/PostSetupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/PostSetupActivity;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/glass/setup/PostSetupActivity$1;->this$0:Lcom/google/glass/setup/PostSetupActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity$1;->this$0:Lcom/google/glass/setup/PostSetupActivity;

    sget-object v1, Lcom/google/glass/setup/PostSetupActivity$State;->PAIRING:Lcom/google/glass/setup/PostSetupActivity$State;

    iput-object v1, v0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    .line 192
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity$1;->this$0:Lcom/google/glass/setup/PostSetupActivity;

    invoke-static {v0}, Lcom/google/glass/setup/PostSetupActivity;->access$100(Lcom/google/glass/setup/PostSetupActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Users tap to pair and we show the pairing waiting screen."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity$1;->this$0:Lcom/google/glass/setup/PostSetupActivity;

    invoke-virtual {v0}, Lcom/google/glass/setup/PostSetupActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 194
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity$1;->this$0:Lcom/google/glass/setup/PostSetupActivity;

    invoke-static {v0}, Lcom/google/glass/setup/PostSetupActivity;->access$400(Lcom/google/glass/setup/PostSetupActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity$1;->this$0:Lcom/google/glass/setup/PostSetupActivity;

    invoke-static {v0}, Lcom/google/glass/setup/PostSetupActivity;->access$300(Lcom/google/glass/setup/PostSetupActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/glass/hidden/HiddenBluetoothDevice;->createBond(Landroid/bluetooth/BluetoothDevice;)Z

    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public onDone()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity$1;->this$0:Lcom/google/glass/setup/PostSetupActivity;

    iget-object v0, v0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    sget-object v1, Lcom/google/glass/setup/PostSetupActivity$State;->TAP_TO_PAIR:Lcom/google/glass/setup/PostSetupActivity$State;

    if-ne v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity$1;->this$0:Lcom/google/glass/setup/PostSetupActivity;

    invoke-static {v0}, Lcom/google/glass/setup/PostSetupActivity;->access$100(Lcom/google/glass/setup/PostSetupActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Users skip the pairing, show the welcome screen"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity$1;->this$0:Lcom/google/glass/setup/PostSetupActivity;

    sget-object v1, Lcom/google/glass/setup/PostSetupActivity$State;->WELCOME:Lcom/google/glass/setup/PostSetupActivity$State;

    iput-object v1, v0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    .line 181
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity$1;->this$0:Lcom/google/glass/setup/PostSetupActivity;

    invoke-static {v0}, Lcom/google/glass/setup/PostSetupActivity;->access$200(Lcom/google/glass/setup/PostSetupActivity;)V

    .line 183
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity$1;->this$0:Lcom/google/glass/setup/PostSetupActivity;

    invoke-static {v0}, Lcom/google/glass/setup/PostSetupActivity;->access$300(Lcom/google/glass/setup/PostSetupActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z

    .line 185
    :cond_0
    return-void
.end method
