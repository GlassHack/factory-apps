.class Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$2;
.super Ljava/lang/Object;
.source "InitiateBluetoothPairingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->pushFragment(Landroid/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

.field final synthetic val$fragment:Landroid/app/Fragment;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$2;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    iput-object p2, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$2;->val$fragment:Landroid/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$2;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->access$100(Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Push fragment: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$2;->val$fragment:Landroid/app/Fragment;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$2;->this$0:Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$animator;->fragment_transition_enter:I

    sget v2, Lcom/google/glass/settings/ui/R$animator;->fragment_transition_go_back:I

    sget v3, Lcom/google/glass/settings/ui/R$animator;->fragment_transition_come_back:I

    sget v4, Lcom/google/glass/settings/ui/R$animator;->fragment_transition_exit:I

    .line 157
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$id;->root:I

    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity$2;->val$fragment:Landroid/app/Fragment;

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 163
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 165
    return-void
.end method
