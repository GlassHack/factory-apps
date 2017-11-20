.class Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$1;
.super Lcom/google/glass/phone/PhoneCallManagerServiceConnection;
.source "PhoneCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$1;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerAttached(Lcom/google/glass/phone/IPhoneCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/glass/phone/IPhoneCallListener;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$1;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    iput-object p1, v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->listener:Lcom/google/glass/phone/IPhoneCallListener;

    .line 65
    return-void
.end method

.method public onListenerDetached()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$1;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->listener:Lcom/google/glass/phone/IPhoneCallListener;

    .line 60
    return-void
.end method
